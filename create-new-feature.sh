#!/bin/bash

# ======================================================================
# Script untuk Membuat Struktur Folder Fitur Baru
#
# Cara Penggunaan:
# 1. Pastikan script ini executable: chmod +x feature.sh
# 2. Jalankan dari root direktori proyek: ./feature.sh NamaFitur
#
# Contoh:
# ./feature.sh device_management
# ======================================================================

# Periksa apakah nama fitur diberikan
if [ -z "$1" ]; then
  echo "❌ Error: Harap berikan nama fitur."
  echo "Contoh: ./feature.sh deviceManagement"
  exit 1
fi

# Konversi nama fitur dari camelCase ke snake_case (misal: deviceManagement -> device_management)
FEATURE_NAME=$(echo "$1" | sed -r 's/([A-Z])/_\L\1/g' | sed 's/^_//')
BASE_PATH="lib/src/features/$FEATURE_NAME"

# Periksa apakah direktori fitur sudah ada
if [ -d "$BASE_PATH" ]; then
  echo "⚠️  Warning: Fitur '$FEATURE_NAME' sudah ada."
  exit 1
fi

echo "🚀 Membuat fitur baru: $FEATURE_NAME"

# Buat struktur direktori lengkap
mkdir -p "$BASE_PATH/data/datasources"
mkdir -p "$BASE_PATH/data/models"
mkdir -p "$BASE_PATH/data/repositories"
mkdir -p "$BASE_PATH/domain/entities"
mkdir -p "$BASE_PATH/domain/repositories"
mkdir -p "$BASE_PATH/domain/usecases"
mkdir -p "$BASE_PATH/presentation/bloc"
mkdir -p "$BASE_PATH/presentation/screens"
mkdir -p "$BASE_PATH/presentation/widgets"

# Buat file placeholder agar direktori tidak kosong (opsional)
touch "$BASE_PATH/data/datasources/${FEATURE_NAME}_remote_data_source.dart"
touch "$BASE_PATH/domain/repositories/${FEATURE_NAME}_repository.dart"
touch "$BASE_PATH/presentation/bloc/${FEATURE_NAME}_bloc.dart"
touch "$BASE_PATH/presentation/screens/${FEATURE_NAME}_screen.dart"

echo "✅ Selesai! Struktur untuk fitur '$FEATURE_NAME' telah dibuat di $BASE_PATH"