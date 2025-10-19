import 'package:quanta_hris/src/core/constants/app_images.dart';
import 'package:quanta_hris/src/core/constants/app_strings.dart';
import 'package:quanta_hris/src/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:quanta_hris/src/features/authentication/presentation/bloc/auth_event.dart';
import 'package:quanta_hris/src/features/authentication/presentation/bloc/auth_state.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/app_dropdown_field.dart';
import 'package:quanta_hris/src/shared/widgets/app_text_field.dart';
import 'package:quanta_hris/src/shared/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedTitle;
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();
  bool _obscurePassword = true;
  bool _obscurePasswordConfirmation = true;

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmationController.dispose();
    super.dispose();
  }

  void _handleRegister() {
    if (_formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
        AuthEvent.registerButtonPressed(
          title: _selectedTitle!,
          fullName: _fullNameController.text.trim(),
          email: _emailController.text.trim(),
          password: _passwordController.text,
          passwordConfirmation: _passwordConfirmationController.text,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (user) {
            context.go('/home');
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  AppStrings.auth.messageRegisterSuccess.replaceAll(
                    '{name}',
                    user.fullName,
                  ),
                ),
                backgroundColor: AppColors.primary,
              ),
            );
          },
          failure: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error.message),
                backgroundColor: AppColors.error,
              ),
            );
          },
        );
      },
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.pop(),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.large,
                    vertical: AppSpacing.large,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Logo
                        Center(
                          child: Image.asset(
                            AppImages.global.logoSmartcoolText,
                            width: 240,
                          ),
                        ),

                        const SizedBox(height: AppSpacing.xl),

                        // Welcome Text
                        Text(
                          AppStrings.auth.titleRegister,
                          style: AppTypography.heading2,
                          textAlign: TextAlign.center,
                        ),

                        const SizedBox(height: AppSpacing.small),

                        Text(
                          AppStrings.auth.titleRegisterSubtitle,
                          style: AppTypography.bodyMedium,
                          textAlign: TextAlign.center,
                        ),

                        const SizedBox(height: AppSpacing.xxl),

                        // Title Dropdown
                        AppDropdownField<String>(
                          value: _selectedTitle,
                          items: AppStrings.auth.optionsTitle.map((
                            String title,
                          ) {
                            return DropdownMenuItem<String>(
                              value: title,
                              child: Text(title),
                            );
                          }).toList(),
                          labelText: AppStrings.auth.labelTitle,
                          prefixIcon: const Icon(Icons.person_outline),
                          enabled: !isLoading,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppStrings.auth.validationTitleEmpty;
                            }
                            return null;
                          },
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedTitle = newValue;
                            });
                          },
                        ),

                        const SizedBox(height: AppSpacing.medium),

                        // Full Name Field
                        AppTextField(
                          controller: _fullNameController,
                          labelText: AppStrings.auth.labelFullName,
                          hintText: AppStrings.auth.hintFullName,
                          prefixIcon: const Icon(Icons.account_circle_outlined),
                          textInputAction: TextInputAction.next,
                          enabled: !isLoading,
                          textCapitalization: TextCapitalization.words,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return AppStrings.auth.validationFullNameEmpty;
                            }
                            if (value.trim().length < 2) {
                              return AppStrings.auth.validationFullNameTooShort;
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: AppSpacing.medium),

                        // Email Field
                        AppTextField(
                          controller: _emailController,
                          labelText: AppStrings.auth.labelEmail,
                          hintText: AppStrings.auth.hintEmail,
                          prefixIcon: const Icon(Icons.email_outlined),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          enabled: !isLoading,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return AppStrings.auth.validationEmailEmpty;
                            }
                            if (!value.contains('@')) {
                              return AppStrings.auth.validationEmailInvalid;
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: AppSpacing.medium),

                        // Password Field
                        TextFormField(
                          controller: _passwordController,
                          obscureText: _obscurePassword,
                          textInputAction: TextInputAction.next,
                          enabled: !isLoading,
                          decoration: InputDecoration(
                            labelText: AppStrings.auth.labelPassword,
                            hintText: AppStrings.auth.hintPassword,
                            prefixIcon: const Icon(Icons.lock_outline),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                              ),
                              onPressed: isLoading
                                  ? null
                                  : () {
                                      setState(() {
                                        _obscurePassword = !_obscurePassword;
                                      });
                                    },
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppStrings.auth.validationPasswordEmpty;
                            }
                            if (value.length < 8) {
                              return AppStrings.auth.validationPasswordTooShort;
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: AppSpacing.medium),

                        // Password Confirmation Field
                        TextFormField(
                          controller: _passwordConfirmationController,
                          obscureText: _obscurePasswordConfirmation,
                          textInputAction: TextInputAction.done,
                          enabled: !isLoading,
                          onFieldSubmitted: (_) => _handleRegister(),
                          decoration: InputDecoration(
                            labelText:
                                AppStrings.auth.labelPasswordConfirmation,
                            hintText: AppStrings.auth.hintPasswordConfirmation,
                            prefixIcon: const Icon(Icons.lock_outline),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePasswordConfirmation
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                              ),
                              onPressed: isLoading
                                  ? null
                                  : () {
                                      setState(() {
                                        _obscurePasswordConfirmation =
                                            !_obscurePasswordConfirmation;
                                      });
                                    },
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppStrings
                                  .auth
                                  .validationPasswordConfirmationEmpty;
                            }
                            if (value != _passwordController.text) {
                              return AppStrings.auth.validationPasswordMismatch;
                            }
                            return null;
                          },
                        ),

                        // ✅ Tambahkan spacing bottom untuk keyboard
                        SizedBox(
                          height: MediaQuery.of(context).viewInsets.bottom > 0
                              ? AppSpacing.large
                              : AppSpacing.xl,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // ✅ Button tetap di bottom dengan SafeArea
              SafeArea(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(AppSpacing.medium),
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    boxShadow: MediaQuery.of(context).viewInsets.bottom > 0
                        ? null
                        : [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 4,
                              offset: const Offset(0, -2),
                            ),
                          ],
                  ),
                  child: PrimaryButton(
                    text: AppStrings.auth.buttonRegister,
                    isLoading: isLoading,
                    loadingText: AppStrings.auth.buttonRegisterLoading,
                    onPressed: _handleRegister,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
