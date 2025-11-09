import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';

/// Widget untuk memilih file dengan preview thumbnail
///
/// Features:
/// - Dashed border saat belum ada file
/// - Thumbnail preview untuk gambar
/// - Icon preview untuk PDF
/// - Tap untuk view full file
/// - Remove button
/// - File size validation
class FilePickerWidget extends StatefulWidget {
  final String? label;
  final String? hint;
  final File? initialFile;
  final ValueChanged<File?>? onFileSelected;
  final int maxSizeInMB;
  final List<String> allowedExtensions;
  final bool isRequired;

  const FilePickerWidget({
    super.key,
    this.label,
    this.hint,
    this.initialFile,
    this.onFileSelected,
    this.maxSizeInMB = 5,
    this.allowedExtensions = const ['pdf', 'jpg', 'jpeg', 'png'],
    this.isRequired = false,
  });

  @override
  State<FilePickerWidget> createState() => _FilePickerWidgetState();
}

class _FilePickerWidgetState extends State<FilePickerWidget> {
  File? _selectedFile;

  @override
  void initState() {
    super.initState();
    _selectedFile = widget.initialFile;
  }

  Future<void> _pickFile() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: widget.allowedExtensions,
        withData: false,
        withReadStream: false,
      );

      if (result != null && result.files.single.path != null) {
        final file = File(result.files.single.path!);

        // Validate file size
        final fileSize = await file.length();
        final maxSizeInBytes = widget.maxSizeInMB * 1024 * 1024;

        if (fileSize > maxSizeInBytes) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Ukuran file maksimal ${widget.maxSizeInMB}MB'),
                backgroundColor: AppColors.error,
              ),
            );
          }
          return;
        }

        setState(() {
          _selectedFile = file;
        });

        widget.onFileSelected?.call(file);

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Dokumen berhasil dipilih: ${result.files.single.name}',
              ),
              backgroundColor: AppColors.success,
              duration: const Duration(seconds: 2),
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Gagal memilih dokumen: $e'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }

  void _removeFile() {
    setState(() {
      _selectedFile = null;
    });
    widget.onFileSelected?.call(null);
  }

  void _viewFile() {
    if (_selectedFile == null) return;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => _FileViewerScreen(file: _selectedFile!),
      ),
    );
  }

  bool _isImageFile(String path) {
    final extension = path.toLowerCase().split('.').last;
    return ['jpg', 'jpeg', 'png'].contains(extension);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Row(
            children: [
              Text(
                widget.label!,
                style: AppTypography.labelLarge.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (widget.isRequired)
                Text(
                  ' *',
                  style: AppTypography.labelLarge.copyWith(
                    color: AppColors.error,
                    fontWeight: FontWeight.w600,
                  ),
                ),
            ],
          ),
          const SizedBox(height: AppSpacing.small),
        ],
        if (_selectedFile == null) _buildEmptyState() else _buildFilePreview(),
        if (widget.hint != null && _selectedFile == null) ...[
          const SizedBox(height: AppSpacing.xs),
          Text(
            widget.hint!,
            style: AppTypography.bodySmall.copyWith(
              color: AppColors.neutral600,
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildEmptyState() {
    return InkWell(
      onTap: _pickFile,
      borderRadius: BorderRadius.circular(AppRadius.medium),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: AppColors.neutral100,
          borderRadius: BorderRadius.circular(AppRadius.medium),
        ),
        child: CustomPaint(
          painter: _DashedBorderPainter(
            color: AppColors.neutral400,
            strokeWidth: 2,
            dashWidth: 8,
            dashSpace: 4,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(AppSpacing.small),
                  decoration: BoxDecoration(
                    color: AppColors.primary10,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.add, size: 24, color: AppColors.primary),
                ),
                const SizedBox(height: AppSpacing.small),
                Text(
                  'Pilih File',
                  style: AppTypography.labelLarge.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: AppSpacing.xxs),
                Text(
                  'Tap untuk memilih dokumen',
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.neutral600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFilePreview() {
    final fileName = _selectedFile!.path.split('/').last;
    final isImage = _isImageFile(_selectedFile!.path);

    return Stack(
      children: [
        InkWell(
          onTap: _viewFile,
          borderRadius: BorderRadius.circular(AppRadius.medium),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              color: AppColors.neutral100,
              borderRadius: BorderRadius.circular(AppRadius.medium),
              border: Border.all(color: AppColors.success, width: 2),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppRadius.medium),
              child: Row(
                children: [
                  // Thumbnail section
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                      color: AppColors.success.withOpacity(0.1),
                    ),
                    child: isImage
                        ? Image.file(
                            _selectedFile!,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return _buildIconPreview(
                                Icons.image,
                                AppColors.success,
                              );
                            },
                          )
                        : _buildIconPreview(
                            Icons.picture_as_pdf,
                            AppColors.error,
                          ),
                  ),
                  // File info section
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpacing.medium),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            fileName,
                            style: AppTypography.labelLarge.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: AppSpacing.xs),
                          FutureBuilder<int>(
                            future: _selectedFile!.length(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                final sizeInKB = snapshot.data! / 1024;
                                final sizeText = sizeInKB > 1024
                                    ? '${(sizeInKB / 1024).toStringAsFixed(2)} MB'
                                    : '${sizeInKB.toStringAsFixed(1)} KB';
                                return Row(
                                  children: [
                                    Icon(
                                      Icons.insert_drive_file,
                                      size: 14,
                                      color: AppColors.neutral600,
                                    ),
                                    const SizedBox(width: AppSpacing.xxs),
                                    Text(
                                      sizeText,
                                      style: AppTypography.bodySmall.copyWith(
                                        color: AppColors.neutral600,
                                      ),
                                    ),
                                  ],
                                );
                              }
                              return const SizedBox.shrink();
                            },
                          ),
                          const SizedBox(height: AppSpacing.xs),
                          Row(
                            children: [
                              Icon(
                                Icons.touch_app,
                                size: 14,
                                color: AppColors.primary,
                              ),
                              const SizedBox(width: AppSpacing.xxs),
                              Text(
                                'Tap untuk lihat',
                                style: AppTypography.bodySmall.copyWith(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Remove button
        Positioned(
          top: 8,
          right: 8,
          child: Material(
            color: AppColors.error,
            shape: const CircleBorder(),
            child: InkWell(
              onTap: _removeFile,
              customBorder: const CircleBorder(),
              child: const Padding(
                padding: EdgeInsets.all(6),
                child: Icon(Icons.close, size: 16, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildIconPreview(IconData icon, Color color) {
    return Center(child: Icon(icon, size: 48, color: color));
  }
}

/// Custom painter untuk dashed border
class _DashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashWidth;
  final double dashSpace;

  _DashedBorderPainter({
    required this.color,
    required this.strokeWidth,
    required this.dashWidth,
    required this.dashSpace,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final path = Path();
    double distance = 0;
    final radius = AppRadius.medium;

    // Top side
    while (distance < size.width - radius * 2) {
      path.moveTo(radius + distance, 0);
      path.lineTo(radius + distance + dashWidth, 0);
      distance += dashWidth + dashSpace;
    }

    // Right side
    distance = 0;
    while (distance < size.height - radius * 2) {
      path.moveTo(size.width, radius + distance);
      path.lineTo(size.width, radius + distance + dashWidth);
      distance += dashWidth + dashSpace;
    }

    // Bottom side
    distance = 0;
    while (distance < size.width - radius * 2) {
      path.moveTo(size.width - radius - distance, size.height);
      path.lineTo(size.width - radius - distance - dashWidth, size.height);
      distance += dashWidth + dashSpace;
    }

    // Left side
    distance = 0;
    while (distance < size.height - radius * 2) {
      path.moveTo(0, size.height - radius - distance);
      path.lineTo(0, size.height - radius - distance - dashWidth);
      distance += dashWidth + dashSpace;
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// Screen untuk view full file
class _FileViewerScreen extends StatelessWidget {
  final File file;

  const _FileViewerScreen({required this.file});

  bool _isImageFile(String path) {
    final extension = path.toLowerCase().split('.').last;
    return ['jpg', 'jpeg', 'png'].contains(extension);
  }

  @override
  Widget build(BuildContext context) {
    final fileName = file.path.split('/').last;
    final isImage = _isImageFile(file.path);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(fileName, style: const TextStyle(fontSize: 14)),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: Center(
        child: isImage
            ? InteractiveViewer(
                minScale: 0.5,
                maxScale: 4.0,
                child: Image.file(
                  file,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return _buildErrorView('Gagal memuat gambar');
                  },
                ),
              )
            : _buildPdfView(),
      ),
    );
  }

  Widget _buildPdfView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.picture_as_pdf, size: 80, color: Colors.white70),
        const SizedBox(height: 16),
        Text(
          file.path.split('/').last,
          style: const TextStyle(color: Colors.white, fontSize: 16),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        const Text(
          'PDF Viewer belum tersedia',
          style: TextStyle(color: Colors.white60, fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildErrorView(String message) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.error_outline, size: 64, color: Colors.white70),
        const SizedBox(height: 16),
        Text(
          message,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ],
    );
  }
}
