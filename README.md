# Termux Tools — Educational Project

Tools sederhana berbasis **Bash untuk Termux Android** yang dibuat sebagai media pembelajaran untuk memahami cara membuat script, mengatur dependency, menjalankan program dari terminal, dan mengintegrasikan tools jaringan seperti Ngrok.

> **Tujuan utama project ini adalah edukasi dan pembelajaran pemrograman/scripting.**

---

## 📚 Tujuan Project

Project ini dibuat untuk belajar:

* Membuat dan menjalankan Bash Script.
* Menggunakan function pada Bash.
* Membuat menu interaktif di terminal.
* Melakukan validasi input.
* Mengecek dependency sebelum menjalankan program.
* Menggunakan Python dari Bash.
* Memahami proses instalasi package di Termux.
* Belajar mengintegrasikan tools jaringan.
* Memahami struktur project dan proses instalasi otomatis.

Project ini dibuat dari proses belajar dan eksperimen, sehingga kode dapat terus dikembangkan dan diperbaiki.

---

## ⚙️ Fitur

### 1. Ngrok

Menu utama menyediakan opsi untuk menjalankan Ngrok dengan port yang dipilih pengguna.

Contoh:

```text
[1] Jalankan Ngrok
```

Kemudian masukkan port yang ingin digunakan.

Script akan melakukan validasi agar port berada pada rentang:

```text
1 - 65535
```

---

### 2. Modul Lokal

Project juga menyediakan struktur `modul/` untuk menjalankan modul Python lokal yang dibuat atau dipelajari sendiri.

Contoh struktur:

```text
modul/
└── main.py
```

Modul tersebut dapat dipanggil melalui menu:

```text
[2] Jalankan modul lokal
```

---

## 📱 Persyaratan

Project ini ditujukan untuk:

* Android
* Termux
* Bash
* Python

Pastikan Termux sudah terpasang dan dapat menjalankan `pkg`.

---

## 🚀 Instalasi

Clone atau salin project ke perangkat Termux.

Kemudian masuk ke folder project:

```bash
cd nama-folder-project
```

Pastikan terdapat file:

```text
Install.sh
gas_updated.txt
```

Berikan permission:

```bash
chmod +x Install.sh
```

Jalankan installer:

```bash
bash Install.sh
```

Setelah proses instalasi selesai, jalankan:

```bash
./gas
```

---

## 📂 Struktur Project

Struktur sederhananya:

```text
.
├── Install.sh
├── gas_updated.txt
├── gas
└── modul/
    └── main.py
```

`Install.sh` digunakan untuk menyiapkan environment dan dependency.

`gas_updated.txt` merupakan source script utama.

`gas` merupakan script yang disiapkan installer untuk dijalankan.

Folder `modul/` digunakan untuk modul lokal.

---

## 🔐 Ngrok

Jika Ngrok belum terpasang, installer akan mencoba memasangnya.

Setelah itu, installer dapat meminta **authtoken Ngrok**.

Authtoken merupakan informasi pribadi akun. Jangan membagikan token tersebut kepada orang lain atau memasukkannya ke dalam repository publik.

---

# ⚠️ DISCLAIMER

**Tools ini dibuat HANYA UNTUK TUJUAN EDUKASI, PEMBELAJARAN, DAN EKSPERIMEN PEMROGRAMAN.**

Saya sebagai pembuat **tidak bertanggung jawab atas segala bentuk penyalahgunaan tools ini** untuk melakukan tindakan ilegal, merugikan orang lain, mengambil data tanpa izin, melakukan pelacakan tanpa persetujuan, serangan terhadap sistem, atau tindakan lain yang melanggar hukum.

Setiap pengguna bertanggung jawab penuh atas tindakan dan penggunaan tools ini.

Gunakan tools hanya pada:

* Perangkat milik sendiri.
* Sistem yang kamu memiliki izin untuk menguji.
* Lingkungan lab atau pembelajaran.
* Target yang secara jelas telah memberikan izin.

**Jangan menggunakan tools ini untuk melakukan tindakan terhadap orang atau sistem tanpa izin.**

Dengan menggunakan project ini, pengguna memahami bahwa penggunaan tools berada di bawah tanggung jawab pengguna masing-masing.

---

## 🎓 Catatan Pembelajaran

Project ini dibuat sebagai sarana untuk belajar bagaimana sebuah Bash Script bekerja dari awal, mulai dari:

```text
Input
  ↓
Validasi
  ↓
Menu
  ↓
Function
  ↓
Menjalankan program
  ↓
Error handling
```

Silakan pelajari source code dan pahami setiap bagian daripada sekadar menjalankannya.

> **Jangan hanya copy-paste. Pahami bagaimana script tersebut bekerja.**

---

## 📜 Lisensi

Project ini dibuat untuk pembelajaran dan eksperimen pribadi.

Pengguna bertanggung jawab atas penggunaan project sesuai dengan hukum dan peraturan yang berlaku.

---

## 👨‍💻 Author

Dibuat untuk tujuan belajar scripting, Linux/Termux, Bash, dan dasar-dasar integrasi tools.

**Keep learning. Keep experimenting. Keep it legal.**
