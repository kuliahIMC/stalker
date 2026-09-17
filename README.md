# 🚀 Termux Educational Tools

> Koleksi script Bash untuk **Termux Android** yang dibuat sebagai media pembelajaran scripting, automasi terminal, pengelolaan dependency, dan penggunaan tools jaringan.

[![Platform](https://img.shields.io/badge/Platform-Termux-000000?style=for-the-badge\&logo=android)](https://termux.dev/)
[![Shell](https://img.shields.io/badge/Shell-Bash-4EAA25?style=for-the-badge\&logo=gnu-bash\&logoColor=white)](https://www.gnu.org/software/bash/)
[![Python](https://img.shields.io/badge/Python-3.x-3776AB?style=for-the-badge\&logo=python\&logoColor=white)](https://www.python.org/)
[![Status](https://img.shields.io/badge/Status-Educational-blue?style=for-the-badge)]()

---

## 📖 Tentang Project

**Termux Educational Tools** adalah project sederhana yang dibuat untuk mempelajari bagaimana sebuah script Bash dapat digunakan untuk mengelola proses instalasi, dependency, input pengguna, menu interaktif, dan menjalankan program dari terminal.

Project ini dibuat dengan pendekatan **learning by doing**.

Fokus utama project:

* 🐚 Bash scripting
* 📱 Termux Android
* 🐍 Integrasi Bash dengan Python
* 📦 Instalasi dan pengelolaan dependency
* 🧩 Struktur modul
* 🌐 Dasar penggunaan Ngrok
* 🛠️ Error handling dan validasi input
* 📚 Eksperimen dan pembelajaran scripting

---

## ✨ Fitur

### 🌐 Ngrok

Script menyediakan menu untuk menjalankan Ngrok menggunakan port yang dipilih pengguna.

Contoh alur:

```text
Masukkan port: 8080
Gunakan port 8080? (y/n): y

Memulai Ngrok di port 8080...
```

Port akan divalidasi agar berada pada rentang:

```text
1 - 65535
```

### 🧩 Local Module

Project menyediakan direktori `modul/` untuk menyimpan modul Python lokal.

Struktur yang digunakan:

```text
modul/
└── main.py
```

Jika `main.py` tersedia, script dapat menjalankannya melalui menu utama.

---

## 📱 Requirements

Sebelum menggunakan project ini, pastikan perangkat memiliki:

* Android
* Termux
* Bash
* Python 3
* Koneksi internet saat proses instalasi dependency
* Akun Ngrok jika ingin menggunakan tunnel Ngrok

---

## 📥 Installation

### 1. Masuk ke folder project

```bash
cd nama-folder-project
```

### 2. Pastikan file tersedia

```text
Install.sh
gas_updated.txt
modul/
```

### 3. Berikan permission

```bash
chmod +x Install.sh
```

### 4. Jalankan installer

```bash
bash Install.sh
```

Installer akan mempersiapkan dependency yang diperlukan dan membuat executable `gas`.

### 5. Jalankan program

```bash
./gas
```

---

## 🖥️ Menu

Setelah program dijalankan, menu utama akan terlihat seperti:

```text
____________________________________________
[1] Jalankan Ngrok
____________________________________________
[2] Jalankan modul lokal
____________________________________________
[3] Keluar
____________________________________________

Pilih:
```

### Option 1 — Ngrok

Menjalankan Ngrok menggunakan port yang ditentukan pengguna.

### Option 2 — Local Module

Memeriksa dan menjalankan modul lokal yang tersedia di direktori `modul/`.

### Option 3 — Exit

Keluar dari program.

---

## 📂 Project Structure

```text
.
├── Install.sh
├── gas_updated.txt
├── gas
└── modul/
    └── main.py
```

| File / Folder     | Fungsi                                |
| ----------------- | ------------------------------------- |
| `Install.sh`      | Installer dan persiapan environment   |
| `gas_updated.txt` | Source code script utama              |
| `gas`             | Script utama yang disiapkan installer |
| `modul/`          | Direktori modul lokal                 |
| `modul/main.py`   | Modul Python lokal, jika tersedia     |

---

## 🔧 What I Learned From This Project

Project ini dibuat sebagai latihan untuk memahami konsep seperti:

```text
Bash
 │
 ├── Variables
 ├── Functions
 ├── Conditions
 ├── Loops
 ├── Case / Menu
 ├── Input Validation
 ├── Exit Codes
 ├── Command Checking
 └── Program Execution
```

Salah satu tujuan project ini adalah belajar memahami **bagaimana script bekerja**, bukan sekadar menjalankan script hasil copy-paste.

---

# ⚠️ Disclaimer

> **IMPORTANT — PLEASE READ**

Project ini dibuat **HANYA UNTUK TUJUAN EDUKASI, PEMBELAJARAN, DAN EKSPERIMEN PEMROGRAMAN.**

Saya sebagai pembuat **tidak bertanggung jawab atas segala bentuk penyalahgunaan tools ini** untuk melakukan tindakan ilegal atau merugikan pihak lain.

Pengguna bertanggung jawab penuh atas penggunaan software ini dan segala tindakan yang dilakukan menggunakan project ini.

### Gunakan hanya pada:

* ✅ Perangkat milik sendiri.
* ✅ Sistem yang kamu miliki.
* ✅ Lab atau lingkungan pengujian.
* ✅ Target yang telah memberikan izin.
* ✅ Tujuan pembelajaran dan penelitian yang sah.

### Jangan gunakan untuk:

* ❌ Mengakses sistem tanpa izin.
* ❌ Mengambil data milik orang lain.
* ❌ Melakukan pelacakan tanpa persetujuan.
* ❌ Menyerang atau mengganggu sistem orang lain.
* ❌ Melakukan tindakan yang melanggar hukum.
* ❌ Merugikan pihak lain.

**Dengan menggunakan project ini, pengguna memahami dan menerima bahwa seluruh penggunaan project menjadi tanggung jawab pengguna masing-masing.**

---

## 🔐 Security & Privacy

Jangan pernah memasukkan informasi sensitif ke dalam source code atau repository publik.

Contohnya:

```text
API Token
Authtoken
Password
Private Key
Credential
Cookie
```

Gunakan environment variable atau mekanisme konfigurasi yang aman apabila suatu saat project dikembangkan lebih lanjut.

---

## 🤝 Contributing

Kontribusi untuk meningkatkan kualitas project ini sangat dipersilakan.

Jika ingin berkontribusi:

1. Fork repository.
2. Buat branch baru.

```bash
git checkout -b feature/perbaikan
```

3. Lakukan perubahan.
4. Commit perubahan.

```bash
git add .
git commit -m "Improve script"
```

5. Push branch.

```bash
git push origin feature/perbaikan
```

6. Buat Pull Request.

Pastikan kontribusi tetap berada dalam tujuan project yang **edukatif, legal, dan bertanggung jawab**.

---

## 🐛 Issues

Jika menemukan bug atau masalah, silakan buat **Issue** dengan informasi:

* Versi Android
* Versi Termux
* Arsitektur perangkat
* Pesan error
* Langkah untuk mereproduksi masalah

Contoh:

```text
Android : 14
Termux  : latest
Arch    : aarch64

Error:
command not found: ngrok
```

Jangan memasukkan password, token, private key, atau informasi pribadi ke dalam Issue.

---

## 📚 Learning Resources

Project ini dapat digunakan sebagai latihan untuk mempelajari:

* Bash scripting
* Linux command line
* Termux
* Python
* Git & GitHub
* Dependency management
* Basic networking

---

## 📜 License

Project ini dibuat untuk tujuan **edukasi dan pembelajaran**.

Pengguna bertanggung jawab untuk memastikan penggunaan project sesuai dengan hukum dan peraturan yang berlaku.

---

## ⭐ Support

Jika project ini membantu proses belajar kamu, kamu dapat memberikan ⭐ pada repository dan membagikannya kepada orang lain yang ingin belajar scripting.

---

<div align="center">

**Made for learning. Built with curiosity.**

**Learn • Experiment • Understand • Build**

</div>
