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


> <img width="305" height="611" alt="image" src="https://github.com/user-attachments/assets/66e222ec-cd21-4bbf-8f56-eca88c573074" />


Di dalam folder lib, terdapat beberapa folder utama yang mengatur struktur aplikasi. 

- Folder Models

  <img width="182" height="50" alt="image" src="https://github.com/user-attachments/assets/07aee1ef-5f9b-4726-8c51-69533d7974ed" />



  Folder models digunakan untuk menyimpan model atau struktur data yang digunakan dalam aplikasi. Pada proyek ini terdapat file registrant_model.dart yang berfungsi untuk mendefinisikan data pendaftar seperti nama, email, jenis kelamin, program studi, serta tanggal lahir.

- Folder Pages

  <img width="250" height="98" alt="image" src="https://github.com/user-attachments/assets/3f92b121-da46-4d7c-876e-1368240c24fd" />



  Folder pages berisi halaman-halaman yang ditampilkan pada aplikasi. Pada proyek ini terdapat tiga halaman utama, yaitu registration_page.dart yang berfungsi sebagai halaman form pendaftaran peserta, registrant_list_page.dart yang menampilkan daftar peserta yang telah mendaftar, serta registrant_detail_page.dart yang menampilkan informasi lengkap dari peserta yang dipilih.

- Folder Provider

  <img width="225" height="50" alt="image" src="https://github.com/user-attachments/assets/9538d9f7-bd75-41b1-96a2-725136cee719" />



  Selanjutnya terdapat folder providers yang berfungsi untuk mengelola state aplikasi menggunakan Provider. File registration_provider.dart digunakan untuk menyimpan dan mengatur data pendaftar, seperti menambahkan data peserta baru, menampilkan daftar peserta, serta menghapus data peserta.

- Main.dart

  <img width="148" height="28" alt="image" src="https://github.com/user-attachments/assets/09aa3b1a-0d4a-4706-bb6d-e2d138e536f0" />



  File main.dart merupakan file utama yang menjadi titik awal aplikasi dijalankan. Pada file ini juga dilakukan konfigurasi Provider serta pengaturan navigasi antar halaman dalam aplikasi.

---


## Tampilan Aplikasi 💻

- **Halaman Form Registrasi**

  <img width="1910" height="943" alt="image" src="https://github.com/user-attachments/assets/f8811a14-450b-436d-8401-8353be8ef28b" />


- **Halaman Daftar Peserta**

  <img width="1907" height="946" alt="image" src="https://github.com/user-attachments/assets/f084e21d-6812-436d-8d21-8b789498050e" />



- **Halaman Detail Peserta**

  <img width="1906" height="945" alt="image" src="https://github.com/user-attachments/assets/9d375bdf-42aa-4be5-b134-f0a58dfdf471" />



- **Notifikasi Aplikasi**

  a. **Notifikasi Email Sudah Terdaftar**

  > <img width="1906" height="944" alt="image" src="https://github.com/user-attachments/assets/b4b140c6-fad6-4ac1-a5c6-d2dca1359f53" />



  b. **Notifikasi Persetujuan Syarat dan Ketentuan**

  > <img width="1904" height="946" alt="image" src="https://github.com/user-attachments/assets/1bdce9ef-5dbd-4df5-b216-7c43e397c7bc" />



  c. **Notifikasi Registrasi Berhasil**

  > <img width="1904" height="943" alt="image" src="https://github.com/user-attachments/assets/201f7e9d-7713-4c9a-a7c8-2265863d025e" />



  d. **Notifikasi Validasi Form**

  > <img width="1908" height="944" alt="image" src="https://github.com/user-attachments/assets/e316a2b1-f0ac-4797-967b-25b89549c289" />



  e. **Dialog konfirmasi penghapusan data**

  > <img width="1906" height="942" alt="image" src="https://github.com/user-attachments/assets/a3e7337c-2a9e-436a-92fd-540dd994c0f9" />



  f. **Notifikasi Berhasil Menghapus Data**

  > <img width="1907" height="948" alt="image" src="https://github.com/user-attachments/assets/437b12f2-dd70-4aa7-83c6-31ace8e65e08" />




---


## Alur Penggunaan Aplikasi

1. Menjalankan Aplikasi
  
   Untuk menjalankan aplikasi, pengguna dapat membuka proyek menggunakan Visual Studio Code. Setelah itu, pengguna menekan tombol Run atau Start Debugging yang terdapat pada bagian atas editor. Setelah proses build selesai, aplikasi akan dijalankan dan ditampilkan pada browser atau emulator perangkat.
  
   > ![WhatsApp Image 2026-03-13 at 12 22 52](https://github.com/user-attachments/assets/0e28b8d0-1dc1-4dc1-a4d8-abfc4dd29748)


---

2. Menampilkan Halaman Form Pendaftaran
   
   Setelah aplikasi berhasil dijalankan, sistem akan menampilkan halaman utama yaitu Form Pendaftaran Event Kampus. Pada halaman ini pengguna diminta untuk mengisi beberapa data yang diperlukan untuk melakukan pendaftaran.
   
   Data yang harus diisi oleh pengguna antara lain nama lengkap, email, password, jenis kelamin, program studi, serta tanggal lahir.

   > <img width="1910" height="943" alt="image" src="https://github.com/user-attachments/assets/f8811a14-450b-436d-8401-8353be8ef28b" />


   Field nama lengkap digunakan untuk memasukkan nama peserta yang akan mengikuti event. Selanjutnya terdapat field email yang berfungsi untuk mengisi alamat email peserta sebagai identitas atau kontak yang dapat digunakan. Kemudian terdapat field password yang digunakan untuk memasukkan kata sandi dan juga tersedia ikon di samping kanan untuk menampilkan atau menyembunyikan password sehingga pengguna dapat memastikan bahwa password yang dimasukkan sudah benar.

   Setelah itu terdapat pilihan jenis kelamin yang menggunakan komponen radio button, di mana pengguna dapat memilih salah satu pilihan yaitu laki-laki atau perempuan. Berikutnya terdapat field program studi yang berbentuk dropdown menu, sehingga pengguna dapat memilih program studi sesuai dengan pilihan yang tersedia. Disini tersedia Teknik Informatika, Sistem Informasi, Teknik Komputer, Data Science, dan juga Desain Komunikasi Visual.

   Selanjutnya pengguna juga diminta untuk mengisi tanggal lahir dengan menggunakan fitur date picker. Ketika field tersebut ditekan, akan muncul tampilan kalender yang memudahkan pengguna dalam memilih tanggal lahir. Selain itu, pengguna juga harus mencentang checkbox persetujuan syarat dan ketentuan sebagai tanda bahwa pengguna telah menyetujui aturan yang berlaku sebelum melakukan pendaftaran.

   Setelah semua data diisi dengan lengkap, pengguna dapat menekan tombol “Daftar Sekarang” untuk mengirimkan data pendaftaran. Jika masih terdapat data yang belum diisi, maka sistem akan menampilkan pesan peringatan agar pengguna melengkapi data tersebut terlebih dahulu. Di bagian bawah form juga terdapat tombol “Reset Form” yang dapat digunakan untuk menghapus seluruh data yang telah diisi sehingga pengguna dapat mengisi kembali form dari awal.

---

3. Mengisi Form Pendaftaran
  
   Setelah halaman Form Pendaftaran Event Kampus ditampilkan, saya mencoba melakukan pendaftaran dengan mengisi seluruh data yang tersedia pada form tersebut. Pada tahap ini saya memasukkan nama lengkap dengan nama pengguna Grace Vies Angel. Lalu mengisi email dan password pada field yang telah disediakan. Selanjutnya saya memilih jenis kelamin menggunakan pilihan radio button yang tersedia. Pada contoh ini saya memilih opsi Perempuan.

   > <img width="1907" height="947" alt="image" src="https://github.com/user-attachments/assets/83c8916f-6b02-4771-a1e5-542fdcb78eed" />


   Setelah itu saya memilih program studi melalui menu dropdown, di mana saya memilih program studi Teknik Informatika sesuai dengan pilihan yang tersedia.

   > <img width="1907" height="944" alt="image" src="https://github.com/user-attachments/assets/d71e7203-f1e9-415c-8298-7524a9ecb838" />


   Kemudian saya mengisi tanggal lahir dengan menggunakan fitur date picker, yaitu dengan memilih tanggal 13 Juli 2006 pada tampilan kalender yang muncul.

   > <img width="1909" height="949" alt="image" src="https://github.com/user-attachments/assets/0cfcabc4-e5c0-4517-bd43-21305e972a76" />


   Setelah semua data berhasil diisi, saya mencentang checkbox persetujuan syarat dan ketentuan sebagai tanda bahwa saya menyetujui aturan yang berlaku dalam proses pendaftaran.

   > <img width="1907" height="946" alt="image" src="https://github.com/user-attachments/assets/bf130fd8-b6d7-4da8-b7fd-008cf5364aee" />


   Apabila checkbox tersebut tidak dicentang, maka proses pendaftaran tidak dapat dilakukan. Sistem akan menampilkan pesan bahwa pengguna harus menyetujui syarat dan ketentuan terlebih dahulu sebelum melanjutkan proses pendaftaran.

   > <img width="1909" height="945" alt="image" src="https://github.com/user-attachments/assets/59f2e2e8-f16f-4385-8326-cdd5ce65f35f" />


   Selain itu, aplikasi juga melakukan pengecekan terhadap email yang dimasukkan. Jika email yang digunakan sudah pernah terdaftar sebelumnya, maka sistem akan menampilkan peringatan bahwa email tersebut sudah digunakan dan pengguna diminta untuk menggunakan email yang berbeda.

   > <img width="1906" height="944" alt="image" src="https://github.com/user-attachments/assets/b4b140c6-fad6-4ac1-a5c6-d2dca1359f53" />

   Setelah seluruh data diisi dengan benar, checkbox telah dicentang, dan email yang digunakan belum terdaftar sebelumnya, saya kemudian menekan tombol Daftar Sekarang untuk mengirimkan data pendaftaran ke dalam sistem. Setelah tombol tersebut ditekan, pengguna akan mendapat notifikasi bahwa registrasi telah berhasil dan data pendaftar akan disimpan.

   > <img width="1908" height="945" alt="image" src="https://github.com/user-attachments/assets/30fd3f08-7fc7-458a-9545-55c97743e7a2" />


   
---

4. Menampilkan Halaman Daftar Peserta
  
   Setelah proses pendaftaran berhasil dilakukan, aplikasi akan menampilkan halaman Daftar Peserta. Pada halaman ini ditampilkan seluruh data peserta yang telah berhasil melakukan pendaftaran pada aplikasi.

   Di bagian atas halaman terdapat judul “Daftar Peserta” yang juga menampilkan jumlah total peserta yang telah terdaftar. Jumlah tersebut akan otomatis bertambah setiap kali ada peserta baru yang berhasil melakukan pendaftaran. Di sisi kanan setiap data peserta juga terdapat ikon tempat sampah yang berfungsi untuk menghapus data peserta dari daftar.

   > <img width="1907" height="946" alt="image" src="https://github.com/user-attachments/assets/f084e21d-6812-436d-8d21-8b789498050e" />


   Selain itu pada bagian pojok kanan bawah halaman, terdapat tombol Floating Action Button (+). Tombol ini berfungsi untuk menambahkan peserta baru ke dalam sistem. Ketika pengguna menekan tombol (+ ) tersebut, aplikasi akan secara otomatis mengarah kembali ke halaman Form Pendaftaran.

   > ![WhatsApp Image 2026-03-13 at 12 29 26](https://github.com/user-attachments/assets/d0d2c102-9481-46cc-ae70-c798b14fe73a)

   
   > **Kembali ke halaman form pendaftaran.**
   >
   > <img width="1910" height="943" alt="image" src="https://github.com/user-attachments/assets/f8811a14-450b-436d-8401-8353be8ef28b" />

---

5. Melihat Detail Peserta

   Pada halaman Daftar Peserta, pengguna dapat melihat informasi peserta secara lebih lengkap dengan cara menekan salah satu data peserta yang terdapat pada daftar. Setelah salah satu peserta dipilih, aplikasi akan menampilkan halaman Detail Peserta seperti yang terlihat pada gambar di bawah ini. Halaman ini menampilkan informasi lengkap mengenai peserta yang telah melakukan pendaftaran.
   
   > <img width="1906" height="945" alt="Screenshot 2026-03-13 121816" src="https://github.com/user-attachments/assets/3f8b89da-cc26-4773-a9c9-d296bf3729fb" />



   Di bagian atas halaman ditampilkan avatar berbentuk lingkaran yang berisi huruf awal dari nama peserta, serta nama lengkap peserta. Selain itu juga ditampilkan informasi waktu pendaftaran, yaitu kapan data peserta tersebut berhasil didaftarkan ke dalam sistem. Di bawah bagian profil tersebut, terdapat beberapa informasi detail seperti Email, Jenis Kelamin, Program Studi, dan Tanggal Lahir dari pengguna.

   Selain itu, sistem juga secara otomatis menampilkan usia peserta, yang dihitung berdasarkan tanggal lahir yang telah dimasukkan sebelumnya. Perhitungan usia ini dilakukan secara otomatis oleh sistem sehingga pengguna tidak perlu menghitungnya secara manual.

---

6. Menghapus Data Peserta

   Pada halaman Daftar Peserta, setiap data peserta juga dilengkapi dengan ikon hapus (ikon tempat sampah) yang berada di sisi kanan setiap item peserta. Ikon ini digunakan jika pengguna ingin menghapus data peserta dari daftar yang telah tersimpan di dalam aplikasi.
   
   > ![WhatsApp Image 2026-03-13 at 12 30 53](https://github.com/user-attachments/assets/fcb8233b-bd08-44ff-9dfe-ca51477cdbb9)


   Untuk menghapus data peserta, pengguna cukup menekan ikon tempat sampah yang terdapat pada data peserta yang ingin dihapus. Setelah ikon tersebut ditekan, aplikasi tidak langsung menghapus data, tetapi terlebih dahulu akan menampilkan dialog konfirmasi penghapusan.

   Dialog konfirmasi ini berisi pertanyaan untuk memastikan apakah pengguna benar-benar ingin menghapus data peserta tersebut. Pada dialog tersebut terdapat dua pilihan tombol, yaitu:

   ⇢ Batal, untuk membatalkan proses penghapusan data
   
   ⇢ Hapus, untuk melanjutkan proses penghapusan data peserta
     

   > <img width="1908" height="947" alt="image" src="https://github.com/user-attachments/assets/4e133e84-e024-45c3-b1ec-fec713dd24fb" />


   Jika pengguna memilih tombol Hapus, maka data peserta akan langsung dihapus dari daftar peserta yang tersimpan di dalam aplikasi. Setelah data berhasil dihapus, daftar peserta akan langsung diperbarui secara otomatis, sehingga data yang telah dihapus tidak lagi muncul pada halaman tersebut.

   Aplikasi akan menampilkan notifikasi bahwa data peserta berhasil dihapus, sehingga pengguna mengetahui bahwa proses penghapusan telah berhasil dilakukan.
   
   > **Tidak ada lagi data pengguna bernama Muhammad Fachri**
   >
   > <img width="1908" height="948" alt="image" src="https://github.com/user-attachments/assets/28bd63bd-3a25-4306-b605-4cac7e580a0c" />


---

### 📌 Summary

Aplikasi ini memudahkan pengguna dalam melakukan pendaftaran peserta event kampus. Pengguna dapat mengisi form pendaftaran, melihat daftar peserta, melihat detail peserta, serta menghapus data peserta jika diperlukan. Dengan menggunakan Provider, perubahan data pada aplikasi dapat diperbarui secara otomatis pada tampilan.

