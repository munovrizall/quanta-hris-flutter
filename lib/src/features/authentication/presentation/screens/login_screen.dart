import 'package:quanta_hris/src/core/constants/app_images.dart';
import 'package:quanta_hris/src/core/constants/app_strings.dart';
import 'package:quanta_hris/src/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:quanta_hris/src/features/authentication/presentation/bloc/auth_event.dart';
import 'package:quanta_hris/src/features/authentication/presentation/bloc/auth_state.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/app_text_field.dart';
import 'package:quanta_hris/src/shared/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    if (_formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
        AuthEvent.loginButtonPressed(
          login: _emailController.text.trim(),
          password: _passwordController.text,
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
                  AppStrings.auth.messageLoginSuccess.replaceAll(
                    '{name}',
                    user.namaLengkap,
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
        // Dapatkan loading state dari BLoC
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.go('/onboarding'),
            ),
          ),
          body: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: IntrinsicHeight(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: AppSpacing.large,
                          right: AppSpacing.large,
                          top: AppSpacing.large,
                          bottom:
                              AppSpacing.large +
                              MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: Column(
                          children: [
                            // Main content - akan berada di tengah
                            Expanded(
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
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
                                      AppStrings.auth.titleWelcome,
                                      style: AppTypography.heading2,
                                      textAlign: TextAlign.center,
                                    ),

                                    const SizedBox(height: AppSpacing.small),

                                    Text(
                                      AppStrings.auth.titleWelcomeSubtitle,
                                      style: AppTypography.bodyMedium,
                                      textAlign: TextAlign.center,
                                    ),

                                    const SizedBox(height: AppSpacing.xxl),

                                    // Email Field
                                    AppTextField(
                                      controller: _emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.next,
                                      enabled: !isLoading,
                                      labelText: AppStrings.auth.labelEmail,
                                      hintText: AppStrings.auth.hintEmail,
                                      prefixIcon: const Icon(
                                        Icons.email_outlined,
                                      ),
                                      validator: (value) {
                                        if (value == null ||
                                            value.trim().isEmpty) {
                                          return AppStrings
                                              .auth
                                              .validationEmailEmpty;
                                        }
                                        if (!value.contains('@')) {
                                          return AppStrings
                                              .auth
                                              .validationEmailInvalid;
                                        }
                                        return null;
                                      },
                                    ),

                                    const SizedBox(height: AppSpacing.medium),

                                    // Password Field
                                    TextFormField(
                                      controller: _passwordController,
                                      obscureText: _obscurePassword,
                                      textInputAction: TextInputAction.done,
                                      enabled: !isLoading,
                                      onFieldSubmitted: (_) => _handleLogin(),
                                      decoration: InputDecoration(
                                        labelText:
                                            AppStrings.auth.labelPassword,
                                        hintText: AppStrings.auth.hintPassword,
                                        prefixIcon: const Icon(
                                          Icons.lock_outline,
                                        ),
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
                                                    _obscurePassword =
                                                        !_obscurePassword;
                                                  });
                                                },
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return AppStrings
                                              .auth
                                              .validationPasswordEmpty;
                                        }
                                        return null;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // Bottom section - Login button dan forgot password
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                // Login Button
                                PrimaryButton(
                                  text: AppStrings.auth.buttonLogin,
                                  isLoading: isLoading,
                                  loadingText:
                                      AppStrings.auth.buttonLoginLoading,
                                  onPressed: _handleLogin,
                                ),

                                const SizedBox(height: AppSpacing.medium),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
