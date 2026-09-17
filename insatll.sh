#!/data/data/com.termux/files/usr/bin/bash

# ==============================================
# INSTALLER - TERMUX
# Cocok dengan gas_updated.txt
# ==============================================

set -euo pipefail

R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
B='\033[1;34m'
N='\033[0m'

print_status() { echo -e "${B}[*]${N} $1"; }
print_success() { echo -e "${G}[+]${N} $1"; }
print_warning() { echo -e "${Y}[!]${N} $1"; }
print_error() { echo -e "${R}[-]${N} $1" >&2; }

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MAIN_SCRIPT="$SCRIPT_DIR/gas_updated.txt"
RUN_SCRIPT="$SCRIPT_DIR/gas"

# Pastikan berjalan di Termux
if [ ! -d "/data/data/com.termux/files/usr" ]; then
    print_error "Script ini dirancang untuk Termux Android."
    exit 1
fi

clear 2>/dev/null || true

echo -e "${B}"
echo "╔══════════════════════════════════════════╗"
echo "║          INSTALLER TERMUX                ║"
echo "║        Untuk gas_updated.txt             ║"
echo "╚══════════════════════════════════════════╝"
echo -e "${N}"
echo ""

# Update paket
print_status "Memperbarui daftar paket..."
pkg update -y
print_status "Memperbarui paket Termux..."
pkg upgrade -y

# Dependency yang memang dibutuhkan gas
print_status "Menginstall dependensi..."
pkg install -y python curl wget unzip openssl-tool

# Cek Ngrok
print_status "Memeriksa Ngrok..."

if command -v ngrok >/dev/null 2>&1; then
    print_success "Ngrok sudah terpasang."
else
    print_warning "Ngrok belum terpasang."

    arch="$(uname -m)"
    case "$arch" in
        aarch64) ngrok_arch="arm64" ;;
        armv7l|armv8l) ngrok_arch="arm" ;;
        i686|i386) ngrok_arch="386" ;;
        x86_64) ngrok_arch="amd64" ;;
        *)
            print_error "Arsitektur tidak didukung otomatis: $arch"
            exit 1
            ;;
    esac

    NGROK_URL="https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-${ngrok_arch}.zip"
    TMP_DIR="$SCRIPT_DIR/.ngrok_tmp"
    mkdir -p "$TMP_DIR"

    print_status "Mengunduh Ngrok untuk $ngrok_arch..."
    wget -q --show-progress "$NGROK_URL" -O "$TMP_DIR/ngrok.zip"

    print_status "Memasang Ngrok..."
    unzip -o -q "$TMP_DIR/ngrok.zip" -d "$TMP_DIR"

    if [ ! -f "$TMP_DIR/ngrok" ]; then
        rm -rf "$TMP_DIR"
        print_error "Binary Ngrok tidak ditemukan."
        exit 1
    fi

    chmod +x "$TMP_DIR/ngrok"
    mv "$TMP_DIR/ngrok" "$PREFIX/bin/ngrok"
    rm -rf "$TMP_DIR"

    print_success "Ngrok berhasil dipasang."
fi

# Konfigurasi Ngrok menggunakan lokasi konfigurasi modern
print_status "Memeriksa konfigurasi Ngrok..."

NGROK_CONFIG_DIR="$HOME/.config/ngrok"
mkdir -p "$NGROK_CONFIG_DIR"

if ngrok config check >/dev/null 2>&1; then
    print_success "Konfigurasi Ngrok tersedia."
else
    echo ""
    print_warning "Authtoken Ngrok belum terdeteksi."
    echo -e "${Y}Masukkan authtoken dari dashboard akun Ngrok kamu.${N}"
    echo ""

    read -r -p "Token: " token

    if [ -n "$token" ]; then
        ngrok config add-authtoken "$token"
        print_success "Authtoken Ngrok tersimpan."
    else
        print_warning "Token kosong. Ngrok mungkin belum bisa membuat tunnel."
    fi
fi

# Modul lokal
print_status "Memeriksa direktori modul..."

if [ -d "$SCRIPT_DIR/modul" ]; then
    print_success "Direktori modul sudah tersedia."
else
    mkdir -p "$SCRIPT_DIR/modul"
    print_success "Direktori modul dibuat."
fi

if [ -f "$SCRIPT_DIR/modul/main.py" ]; then
    print_success "modul/main.py ditemukan."
else
    print_warning "modul/main.py belum tersedia."
fi

# Siapkan gas_updated.txt menjadi ./gas
print_status "Menyiapkan script utama..."

if [ ! -f "$MAIN_SCRIPT" ]; then
    print_error "File gas_updated.txt tidak ditemukan."
    print_error "Letakkan gas_updated.txt satu folder dengan Install.sh."
    exit 1
fi

cp "$MAIN_SCRIPT" "$RUN_SCRIPT"
chmod 700 "$RUN_SCRIPT"

print_success "Script utama siap: ./gas"

echo ""
print_success "══════════════════════════════════════════"
print_success "          INSTALASI SELESAI"
print_success "══════════════════════════════════════════"
echo ""
echo -e "${G}Jalankan:${N} ./gas"
echo ""
echo -e "${Y}Catatan:${N}"
echo "  - Install.sh dan gas_updated.txt harus satu folder."
echo "  - Menu [1] menjalankan Ngrok."
echo "  - Menu [2] memeriksa modul lokal."
echo "  - Tidak ada Seeker yang diunduh otomatis."
echo ""
