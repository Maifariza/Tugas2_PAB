<h2 align="center">📝Registratiom Form Hands-On</h2>

<p align="center"><em>Aplikasi Pendaftaran Event Kampus</em></p>

**DISUSUN OLEH**

| **IDENTITAS** | **KETERANGAN** |
|--------------|----------------|
| Nama | Maifariza Aulia Dyas |
| NIM | 2409116032 |
| Kelas | Sistem Informasi A 24 |
| Mata Kuliah | Pemrograman Aplikasi Bergerak |
| Dosen Pengampu | Anton Prafanto, S.Kom., M.T. |

---

## Deskripsi Aplikasi

Aplikasi ini merupakan aplikasi sederhana berbasis Flutter yang digunakan untuk melakukan pendaftaran peserta pada sebuah event kampus. Melalui aplikasi ini, pengguna dapat mengisi form pendaftaran yang berisi beberapa data seperti nama lengkap, email, password, jenis kelamin, program studi, dan tanggal lahir. Setiap input pada form dilengkapi dengan validasi untuk memastikan data yang dimasukkan sudah benar sebelum proses pendaftaran dilakukan.

Setelah pendaftaran berhasil, data peserta akan disimpan dan ditampilkan pada halaman daftar peserta. Pada halaman tersebut, pengguna dapat melihat seluruh peserta yang telah terdaftar, membuka detail informasi peserta, serta menghapus data peserta jika diperlukan.

Aplikasi ini dibuat menggunakan Flutter dengan bantuan Provider sebagai state management untuk mengelola data peserta. Selain itu, aplikasi ini juga dilengkapi dengan tampilan antarmuka yang sederhana dan mudah digunakan sehingga memudahkan pengguna dalam melakukan proses pendaftaran.

---

## Ketentuan Aplikasi

**Features:**

- ✅ Multi-field form (nama, email, password, dll)
- ✅ Real-time validation
- ✅ Berbagai input widgets (TextFormField, Radio, Dropdown, DatePicker, Checkbox)
- ✅ Provider untuk menyimpan daftar pendaftar
- ✅ Halaman list pendaftar
- ✅ Halaman detail pendaftar

**App Structure:**

```
┌──────────────────┐     ┌──────────────────┐     ┌──────────────────┐
│  Registration    │────→│  Registrant      │────→│  Registrant      │
│  Form Page       │     │  List Page       │     │  Detail Page     │
│                  │     │                  │     │                  │
│ • Name           │     │ • ListView       │     │ • Full info      │
│ • Email          │     │ • Badge count    │     │ • All fields     │
│ • Password       │     │ • Delete action  │     │                  │
│ • Gender (Radio) │     │                  │     │                  │
│ • Prodi (Drop)   │     │                  │     │                  │
│ • DoB (Date)     │     │                  │     │                  │
│ • Agree (Check)  │     │                  │     │                  │
└──────────────────┘     └──────────────────┘     └──────────────────┘
       ↑                          ↑                        ↑
       └──────────────────────────┴────────────────────────┘
                    Provider (RegistrationProvider)
                  Shared state: List<Registrant>

```

---

## 🧷 Struktur Program Aplikasi Pendaftaran Event Kampus

Struktur program pada aplikasi ini mengikuti standar proyek Flutter. Folder seperti android, ios, web, windows, macos, dan linux merupakan folder bawaan Flutter yang digunakan untuk mendukung aplikasi agar dapat dijalankan di berbagai platform. Sementara itu, seluruh kode utama aplikasi yang dibuat berada di dalam folder lib.


> <img width="258" height="605" alt="image" src="https://github.com/user-attachments/assets/825bed7a-907c-413b-9752-2cb07b847449" />

Di dalam folder lib, terdapat beberapa folder utama yang mengatur struktur aplikasi. 

- Folder Models

  Folder models digunakan untuk menyimpan model atau struktur data yang digunakan dalam aplikasi. Pada proyek ini terdapat file registrant_model.dart yang berfungsi untuk mendefinisikan data pendaftar seperti nama, email, jenis kelamin, program studi, serta tanggal lahir.

- Folder Pages

  Folder pages berisi halaman-halaman yang ditampilkan pada aplikasi. Pada proyek ini terdapat tiga halaman utama, yaitu registration_page.dart yang berfungsi sebagai halaman form pendaftaran peserta, registrant_list_page.dart yang menampilkan daftar peserta yang telah mendaftar, serta registrant_detail_page.dart yang menampilkan informasi lengkap dari peserta yang dipilih.

- Folder Provider

  Selanjutnya terdapat folder providers yang berfungsi untuk mengelola state aplikasi menggunakan Provider. File registration_provider.dart digunakan untuk menyimpan dan mengatur data pendaftar, seperti menambahkan data peserta baru, menampilkan daftar peserta, serta menghapus data peserta.

- Main.dart

  File main.dart merupakan file utama yang menjadi titik awal aplikasi dijalankan. Pada file ini juga dilakukan konfigurasi Provider serta pengaturan navigasi antar halaman dalam aplikasi.

---

## Penjelasan Alur Program



Struktur program ini dibuat dengan memisahkan antara model data, halaman tampilan, dan pengelolaan state, sehingga kode aplikasi menjadi lebih rapi, terorganisir, dan mudah untuk dipahami maupun dikembangkan lebih lanjut.

---
