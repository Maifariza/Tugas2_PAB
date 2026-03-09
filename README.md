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

## Struktur Program 📁

Struktur program pada aplikasi ini mengikuti standar proyek Flutter. Folder seperti android, ios, web, windows, macos, dan linux merupakan folder bawaan Flutter yang digunakan untuk mendukung aplikasi agar dapat dijalankan di berbagai platform. Sementara itu, seluruh kode utama aplikasi yang dibuat berada di dalam folder lib.


> <img width="258" height="605" alt="image" src="https://github.com/user-attachments/assets/825bed7a-907c-413b-9752-2cb07b847449" />

Di dalam folder lib, terdapat beberapa folder utama yang mengatur struktur aplikasi. 

- Folder Models

  <img width="245" height="49" alt="image" src="https://github.com/user-attachments/assets/f55d0c1e-482f-4cef-b668-066040f30c79" />


  Folder models digunakan untuk menyimpan model atau struktur data yang digunakan dalam aplikasi. Pada proyek ini terdapat file registrant_model.dart yang berfungsi untuk mendefinisikan data pendaftar seperti nama, email, jenis kelamin, program studi, serta tanggal lahir.

- Folder Pages

  <img width="250" height="94" alt="image" src="https://github.com/user-attachments/assets/b1d6e985-e367-414c-ab0b-cc778c7f6c99" />


  Folder pages berisi halaman-halaman yang ditampilkan pada aplikasi. Pada proyek ini terdapat tiga halaman utama, yaitu registration_page.dart yang berfungsi sebagai halaman form pendaftaran peserta, registrant_list_page.dart yang menampilkan daftar peserta yang telah mendaftar, serta registrant_detail_page.dart yang menampilkan informasi lengkap dari peserta yang dipilih.

- Folder Provider

  <img width="248" height="49" alt="image" src="https://github.com/user-attachments/assets/75b9b47a-efae-4643-a373-24b4fd46f2a9" />


  Selanjutnya terdapat folder providers yang berfungsi untuk mengelola state aplikasi menggunakan Provider. File registration_provider.dart digunakan untuk menyimpan dan mengatur data pendaftar, seperti menambahkan data peserta baru, menampilkan daftar peserta, serta menghapus data peserta.

- Main.dart

  <img width="229" height="30" alt="image" src="https://github.com/user-attachments/assets/44ac0782-10d9-41e2-be13-4a6b430e4a08" />


  File main.dart merupakan file utama yang menjadi titik awal aplikasi dijalankan. Pada file ini juga dilakukan konfigurasi Provider serta pengaturan navigasi antar halaman dalam aplikasi.

---


## Tampilan Aplikasi 💻

- **Halaman Form Registrasi**

  <img width="1906" height="945" alt="image" src="https://github.com/user-attachments/assets/7d5fe52a-5cfb-47a6-9823-b20027b27e25" />


- **Halaman Daftar Peserta**

  <img width="1905" height="943" alt="Screenshot 2026-03-09 041624" src="https://github.com/user-attachments/assets/66264cbf-5c84-4cbe-a8e5-b4357eba3cbc" />


- **Halaman Detail Peserta**

  <img width="1903" height="944" alt="Screenshot 2026-03-09 041641" src="https://github.com/user-attachments/assets/97f57139-0d80-4244-8506-a3bc88edd118" />


- **Notifikasi Aplikasi**

  a. **Notifikasi Email Sudah Terdaftar**

  > <img width="1910" height="946" alt="Screenshot 2026-03-09 041832" src="https://github.com/user-attachments/assets/24ea3899-2ea1-445f-9120-19e89abde3f5" />


  b. **Notifikasi Persetujuan Syarat dan Ketentuan**

  > <img width="1906" height="945" alt="Screenshot 2026-03-09 041813" src="https://github.com/user-attachments/assets/0aa0e534-86e0-4f97-997e-d3f14e4b7bab" />


  c. **Notifikasi Registrasi Berhasil**

  > <img width="1895" height="939" alt="Screenshot 2026-03-09 041550" src="https://github.com/user-attachments/assets/8cac551a-d185-48e0-92f2-c4b332b116fe" />


  d. **Notifikasi Validasi Form**

  > <img width="1909" height="942" alt="Screenshot 2026-03-09 041853" src="https://github.com/user-attachments/assets/3378bd11-ff0c-47ad-b753-61ac33048513" />


  e. **Dialog konfirmasi penghapusan data**

  > <img width="1907" height="946" alt="Screenshot 2026-03-09 041659" src="https://github.com/user-attachments/assets/a17ca395-bdc7-4cf1-8576-ef9ed5aa8c0d" />


  f. **Notifikasi Berhasil Menghapus Data**

  > <img width="1904" height="944" alt="Screenshot 2026-03-09 041716" src="https://github.com/user-attachments/assets/832d598d-3271-4791-8e64-8eae5c3e14fe" />



---


## Alur Penggunaan Aplikasi

1. Menjalankan Aplikasi
  
   Untuk menjalankan aplikasi, pengguna dapat membuka proyek menggunakan Visual Studio Code. Setelah itu, pengguna menekan tombol Run atau Start Debugging yang terdapat pada bagian atas editor. Setelah proses build selesai, aplikasi akan dijalankan dan ditampilkan pada browser atau emulator perangkat.
  
   > ![WhatsApp Image 2026-03-09 at 05 23 31](https://github.com/user-attachments/assets/df8d7102-b230-439a-b157-f05128f245c9)

---

2. Menampilkan Halaman Form Pendaftaran
   
   Setelah aplikasi berhasil dijalankan, sistem akan menampilkan halaman utama yaitu Form Pendaftaran Event Kampus. Pada halaman ini pengguna diminta untuk mengisi beberapa data yang diperlukan untuk melakukan pendaftaran.
   
   Data yang harus diisi oleh pengguna antara lain nama lengkap, email, password, jenis kelamin, program studi, serta tanggal lahir.

   > <img width="1906" height="945" alt="Screenshot 2026-03-09 041013" src="https://github.com/user-attachments/assets/50862dab-d017-4df4-9c32-1e65b6070a05" />


   Field nama lengkap digunakan untuk memasukkan nama peserta yang akan mengikuti event. Selanjutnya terdapat field email yang berfungsi untuk mengisi alamat email peserta sebagai identitas atau kontak yang dapat digunakan. Kemudian terdapat field password yang digunakan untuk memasukkan kata sandi dan juga tersedia ikon di samping kanan untuk menampilkan atau menyembunyikan password sehingga pengguna dapat memastikan bahwa password yang dimasukkan sudah benar.

   Setelah itu terdapat pilihan jenis kelamin yang menggunakan komponen radio button, di mana pengguna dapat memilih salah satu pilihan yaitu laki-laki atau perempuan. Berikutnya terdapat field program studi yang berbentuk dropdown menu, sehingga pengguna dapat memilih program studi sesuai dengan pilihan yang tersedia. Disini tersedia Teknik Informatika, Sistem Informasi, Teknik Komputer, Data Science, dan juga Desain Komunikasi Visual.

   Selanjutnya pengguna juga diminta untuk mengisi tanggal lahir dengan menggunakan fitur date picker. Ketika field tersebut ditekan, akan muncul tampilan kalender yang memudahkan pengguna dalam memilih tanggal lahir. Selain itu, pengguna juga harus mencentang checkbox persetujuan syarat dan ketentuan sebagai tanda bahwa pengguna telah menyetujui aturan yang berlaku sebelum melakukan pendaftaran.

   Setelah semua data diisi dengan lengkap, pengguna dapat menekan tombol “Daftar Sekarang” untuk mengirimkan data pendaftaran. Jika masih terdapat data yang belum diisi, maka sistem akan menampilkan pesan peringatan agar pengguna melengkapi data tersebut terlebih dahulu. Di bagian bawah form juga terdapat tombol “Reset Form” yang dapat digunakan untuk menghapus seluruh data yang telah diisi sehingga pengguna dapat mengisi kembali form dari awal.

---

3. Mengisi Form Pendaftaran
  
   Setelah halaman Form Pendaftaran Event Kampus ditampilkan, saya mencoba melakukan pendaftaran dengan mengisi seluruh data yang tersedia pada form tersebut. Pada tahap ini saya memasukkan nama lengkap dengan nama pengguna Grace Vies Angel. Lalu mengisi email dan password pada field yang telah disediakan. Selanjutnya saya memilih jenis kelamin menggunakan pilihan radio button yang tersedia. Pada contoh ini saya memilih opsi Perempuan.

   > <img width="1909" height="945" alt="image" src="https://github.com/user-attachments/assets/c4d4bc86-3615-4e8c-897c-aeff6c46bd2c" />

   Setelah itu saya memilih program studi melalui menu dropdown, di mana saya memilih program studi Teknik Informatika sesuai dengan pilihan yang tersedia.

   > <img width="1905" height="948" alt="image" src="https://github.com/user-attachments/assets/550d0fe9-755e-4118-a1a3-960aa52faf4b" />

   Kemudian saya mengisi tanggal lahir dengan menggunakan fitur date picker, yaitu dengan memilih tanggal 13 Juli 2006 pada tampilan kalender yang muncul.

   > <img width="1901" height="943" alt="image" src="https://github.com/user-attachments/assets/3ed5bc03-40ba-4d98-ad04-29ffaf6aa707" />

   Setelah semua data berhasil diisi, saya mencentang checkbox persetujuan syarat dan ketentuan sebagai tanda bahwa saya menyetujui aturan yang berlaku dalam proses pendaftaran.

   > <img width="1904" height="945" alt="image" src="https://github.com/user-attachments/assets/d47e0b9d-1895-4b27-9444-319d89b0b4f2" />

   Apabila checkbox tersebut tidak dicentang, maka proses pendaftaran tidak dapat dilakukan. Sistem akan menampilkan pesan bahwa pengguna harus menyetujui syarat dan ketentuan terlebih dahulu sebelum melanjutkan proses pendaftaran.

   > <img width="1906" height="945" alt="Screenshot 2026-03-09 041813" src="https://github.com/user-attachments/assets/0aa0e534-86e0-4f97-997e-d3f14e4b7bab" />

   Selain itu, aplikasi juga melakukan pengecekan terhadap email yang dimasukkan. Jika email yang digunakan sudah pernah terdaftar sebelumnya, maka sistem akan menampilkan peringatan bahwa email tersebut sudah digunakan dan pengguna diminta untuk menggunakan email yang berbeda.

   > <img width="1910" height="946" alt="Screenshot 2026-03-09 041832" src="https://github.com/user-attachments/assets/24ea3899-2ea1-445f-9120-19e89abde3f5" />

   Setelah seluruh data diisi dengan benar, checkbox telah dicentang, dan email yang digunakan belum terdaftar sebelumnya, saya kemudian menekan tombol Daftar Sekarang untuk mengirimkan data pendaftaran ke dalam sistem. Setelah tombol tersebut ditekan, pengguna akan mendapat notifikasi bahwa registrasi telah berhasil dan data pendaftar akan disimpan.

   > <img width="1901" height="941" alt="image" src="https://github.com/user-attachments/assets/f17da8c2-11f0-4b34-b78c-04f69d86d0dc" />

   
---

4. Menampilkan Halaman Daftar Peserta
  
   Setelah proses pendaftaran berhasil dilakukan, aplikasi akan menampilkan halaman Daftar Peserta. Pada halaman ini ditampilkan seluruh data peserta yang telah berhasil melakukan pendaftaran pada aplikasi.

   Di bagian atas halaman terdapat judul “Daftar Peserta” yang juga menampilkan jumlah total peserta yang telah terdaftar. Jumlah tersebut akan otomatis bertambah setiap kali ada peserta baru yang berhasil melakukan pendaftaran. Di sisi kanan setiap data peserta juga terdapat ikon tempat sampah yang berfungsi untuk menghapus data peserta dari daftar.

   > <img width="1905" height="943" alt="Screenshot 2026-03-09 041624" src="https://github.com/user-attachments/assets/dbc2a25c-dd6c-4e65-b658-8603b7b283d5" />


   Selain itu pada bagian pojok kanan bawah halaman, terdapat tombol Floating Action Button (+). Tombol ini berfungsi untuk menambahkan peserta baru ke dalam sistem. Ketika pengguna menekan tombol (+ ) tersebut, aplikasi akan secara otomatis mengarah kembali ke halaman Form Pendaftaran.

   > ![WhatsApp Image 2026-03-09 at 06 31 39](https://github.com/user-attachments/assets/7f740544-371e-4dfb-a646-1166dd280986)
   
   > **Kembali ke halaman form pendaftaran.**
   >
   > <img width="1906" height="945" alt="Screenshot 2026-03-09 041013" src="https://github.com/user-attachments/assets/50862dab-d017-4df4-9c32-1e65b6070a05" />

---

5. Melihat Detail Peserta

   Pada halaman Daftar Peserta, pengguna dapat melihat informasi peserta secara lebih lengkap dengan cara menekan salah satu data peserta yang terdapat pada daftar. Setelah salah satu peserta dipilih, aplikasi akan menampilkan halaman Detail Peserta seperti yang terlihat pada gambar di bawah ini. Halaman ini menampilkan informasi lengkap mengenai peserta yang telah melakukan pendaftaran.
   
   > <img width="1903" height="944" alt="Screenshot 2026-03-09 041641" src="https://github.com/user-attachments/assets/1e65c223-67d9-47dc-8e6f-825f24fa85cf" />


   Di bagian atas halaman ditampilkan avatar berbentuk lingkaran yang berisi huruf awal dari nama peserta, serta nama lengkap peserta. Selain itu juga ditampilkan informasi waktu pendaftaran, yaitu kapan data peserta tersebut berhasil didaftarkan ke dalam sistem. Di bawah bagian profil tersebut, terdapat beberapa informasi detail seperti Email, Jenis Kelamin, Program Studi, dan Tanggal Lahir dari pengguna.

   Selain itu, sistem juga secara otomatis menampilkan usia peserta, yang dihitung berdasarkan tanggal lahir yang telah dimasukkan sebelumnya. Perhitungan usia ini dilakukan secara otomatis oleh sistem sehingga pengguna tidak perlu menghitungnya secara manual.

---

6. Menghapus Data Peserta

   Pada halaman Daftar Peserta, setiap data peserta juga dilengkapi dengan ikon hapus (ikon tempat sampah) yang berada di sisi kanan setiap item peserta. Ikon ini digunakan jika pengguna ingin menghapus data peserta dari daftar yang telah tersimpan di dalam aplikasi.
   
   > ![WhatsApp Image 2026-03-09 at 06 40 47](https://github.com/user-attachments/assets/0ae249f4-5131-4274-a010-5e9762c2bd42)

   Untuk menghapus data peserta, pengguna cukup menekan ikon tempat sampah yang terdapat pada data peserta yang ingin dihapus. Setelah ikon tersebut ditekan, aplikasi tidak langsung menghapus data, tetapi terlebih dahulu akan menampilkan dialog konfirmasi penghapusan.

   Dialog konfirmasi ini berisi pertanyaan untuk memastikan apakah pengguna benar-benar ingin menghapus data peserta tersebut. Pada dialog tersebut terdapat dua pilihan tombol, yaitu:

   ⇢ Batal, untuk membatalkan proses penghapusan data
   
   ⇢ Hapus, untuk melanjutkan proses penghapusan data peserta
     

   > <img width="1907" height="946" alt="Screenshot 2026-03-09 041659" src="https://github.com/user-attachments/assets/6dc2ec84-32dd-471f-996a-1cb767eb7bfa" />

   Jika pengguna memilih tombol Hapus, maka data peserta akan langsung dihapus dari daftar peserta yang tersimpan di dalam aplikasi. Setelah data berhasil dihapus, daftar peserta akan langsung diperbarui secara otomatis, sehingga data yang telah dihapus tidak lagi muncul pada halaman tersebut.

   Aplikasi akan menampilkan notifikasi bahwa data peserta berhasil dihapus, sehingga pengguna mengetahui bahwa proses penghapusan telah berhasil dilakukan.
   
   > **Tidak ada lagi data pengguna bernama Muhammad Fachri**
   >
   ><img width="1904" height="944" alt="Screenshot 2026-03-09 041716" src="https://github.com/user-attachments/assets/a2b49ec2-c1cd-4c5d-8c96-bdb39433ca31" />

---

### 📌 Summary

Aplikasi ini memudahkan pengguna dalam melakukan pendaftaran peserta event kampus. Pengguna dapat mengisi form pendaftaran, melihat daftar peserta, melihat detail peserta, serta menghapus data peserta jika diperlukan. Dengan menggunakan Provider, perubahan data pada aplikasi dapat diperbarui secara otomatis pada tampilan.

