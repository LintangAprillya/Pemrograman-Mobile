# Pemrograman Mobile

---

Nama : Lintang Aprillya Sari Sari

Kelas : 3C / 13

NIM : 2241720231

---

## Jobsheet 13 : Persistensi Data

### Praktikum 1 : Converting Dart models into JSON

#### > 1. Di editor favorit Anda, buat proyek Flutter baru dan beri nama store_data

#### > 2. Pada file main.dart, hapus kode yang ada dan tambahkan kode awal untuk aplikasi dengan kode berikut:

![Praktikum 1 - Langkah 1](./picture/p1_l2.png)

#### > 3. Tambahkan folder baru ke root proyek Anda dengan nama assets.

#### > 4. Di dalam folder aset, buat file baru bernama pizzalist.json dan salin konten yang tersedia di tautan https://gist.github.com/simoales/a33c1c2abe78b48a75ccfd5fa0de0620 File ini berisi daftar objek JSON.

![Praktikum 1 - Langkah 1](./picture/p1_l4.png)

#### > 5. Di file pubspec.yaml, tambahkan referensi ke folder aset baru, seperti yang ditunjukkan di sini:

![Praktikum 1 - Langkah 1](./picture/p1_l5.png)

#### > 6. Pada kelas \_MyHomePageState, di main.dart, tambahkan sebuah variabel state bernama pizzaString:

![Praktikum 1 - Langkah 1](./picture/p1_l67.png)

#### > 7. Untuk membaca isi file pizzalist.json, di bagian bawah kelas \_MyHomePageState di main.dart, tambahkan metode asinkron baru yang disebut readJsonFile, yang akan mengatur nilai pizzaString, seperti yang ditunjukkan di sini:

![Praktikum 1 - Langkah 1](./picture/p1_l67.png)

#### > 8. Pada kelas \_MyHomePageState, timpa metode initState dan, di dalamnya, panggil metode readJsonFile:

![Praktikum 1 - Langkah 1](./picture/p1_l8.png)

#### > 9. Sekarang, kita ingin menampilkan JSON yang diambil di properti dalam Scaffold. Untuk melakukannya, tambahkan widget Teks sebagai child dari Container kita:

![Praktikum 1 - Langkah 1](./picture/p1_l9.png)

#### > 10. Mari kita jalankan aplikasinya. Jika semuanya berjalan seperti yang diharapkan, Anda akan melihat konten file JSON di layar

![Praktikum 1 - Langkah 1](./picture/p1_l10.png)

#### > 11. Kita ingin mengubah String ini menjadi sebuah List of Objects. Kita akan mulai dengan membuat kelas baru. Dalam folder lib aplikasi kita, buat file baru bernama pizza.dart.

#### > 12. Di dalam file tersebut, tentukan properti kelas Pizza:

#### > 13. Di dalam kelas Pizza, tentukan konstruktor bernama fromJson, yang akan mengambil sebuah Map sebagai parameter dan mengubah Map menjadi sebuah instance dari Pizza:

#### > 14. Refaktor metode readJsonFile() pada kelas \_MyHomePageState. Langkah pertama adalah mengubah String menjadi Map dengan memanggil metode jsonDecode. Pada method readJsonFile, tambahkan kode yang di cetak tebal berikut ini:

![Praktikum 1 - Langkah 1](./picture/p1_l14.png)

#### > 15. Pastikan editor Anda secara otomatis menambahkan pernyataan impor untuk pustaka "dart:convert" di bagian atas file main.dart; jika tidak, tambahkan saja secara manual. Tambahkan juga pernyataan impor untuk kelas pizza:

![Praktikum 1 - Langkah 1](./picture/p1_l15.png)

#### > 16. Langkah terakhir adalah mengonversi string JSON kita menjadi List of native Dart objects. Kita dapat melakukan ini dengan mengulang pizzaMapList dan mengubahnya menjadi objek Pizza. Di dalam metode readJsonFile, di bawah metode jsonDecode, tambahkan kode berikut:

![Praktikum 1 - Langkah 1](./picture/p1_l16.png)

#### > 17. Hapus atau beri komentar pada metode setState yang mengatur String pizzaString dan kembalikan daftar objek Pizza sebagai gantinya:

![Praktikum 1 - Langkah 1](./picture/p1_l17.png)

#### > 18. Ubah signature metode sehingga Anda dapat menampilkan nilai balik secara eksplisit:

![Praktikum 1 - Langkah 1](./picture/p1_l18.png)

#### > 19. Sekarang kita memiliki objek List of Pizza. Daripada hanya menampilkan sebuah Teks kepada pengguna, kita dapat menampilkan sebuah ListView yang berisi sekumpulan widget ListTile. Di bagian atas kelas \_MyHomePageState, buat List<Pizza> bernama myPizzas:

![Praktikum 1 - Langkah 1](./picture/p1_l19.png)

#### > 20. Dalam metode initState, pastikan Anda mengatur myPizzas dengan hasil panggilan ke readJsonFile:

![Praktikum 1 - Langkah 1](./picture/p1_l20.png)

#### > 21. Tambahkan kode berikut ini di dalam Scaffold, di dalam metode build():

![Praktikum 1 - Langkah 1](./picture/p1_l21.png)

#### > 22. Jalankan aplikasi. Antarmuka pengguna sekarang seharusnya jauh lebih ramah dan terlihat seperti yang ditunjukkan pada

![Praktikum 1 - Langkah 1](./picture/p1_l22.png)

### Praktikum 2

#### > 1. Tambahkan metode baru ke kelas Pizza, di file pizza.dart, yang disebut toJson. Ini akan mengembalikan sebuah Map<String, dynamic> dari objek:

![Praktikum 1 - Langkah 1](./picture/p2_l1.png)

#### > 2. Setelah Anda memiliki sebuah Map, Anda dapat menserialisasikannya kembali ke dalam string JSON. Tambahkan metode baru di di bagian bawah kelas \_MyHomePageState, di dalam file main.dart, yang disebut convertToJSON:

![Praktikum 1 - Langkah 1](./picture/p2_l2.png)

#### > 3. Metode ini mengubah objek List of Pizza kembali menjadi string Json dengan memanggil metode jsonEncode lagi di pustaka dart_convert.

#### > 4. Terakhir, mari panggil metode tersebut dan cetak string JSON di Debug Console. Tambahkan kode berikut ke metode readJsonFile, tepat sebelum mengembalikan List myPizzas:

![Praktikum 1 - Langkah 1](./picture/p2_l4.png)

#### > 5. Jalankan aplikasi. Anda akan melihat string JSON dicetak, seperti yang ditunjukkan pada gambar berikut:

![Praktikum 1 - Langkah 1](./picture/p2_l5.png)

### Praktikum 3

#### > 1. Gunakan project pada pertemuan 11 bernama books. Pertama, tambahkan ketergantungan pada shared_preferences. Dari Terminal Anda, ketikkan perintah berikut

![Praktikum 1 - Langkah 1](./picture/p3_l1.png)

#### > 2. Untuk memperbarui dependensi dalam proyek Anda, jalankan perintah flutter pub get dari jendela Terminal.

![Praktikum 1 - Langkah 1](./picture/p3_l2.png)

#### > 3. Di bagian atas file main.dart, impor shared_preferences:

![Praktikum 1 - Langkah 1](./picture/p3_l3.png)

#### > 4. Di bagian atas kelas \_MyHomePageState, buat variabel status integer baru bernama appCounter:

![Praktikum 1 - Langkah 1](./picture/p3_l4.png)

#### > 5. Dalam kelas \_MyHomePageState, buat metode asinkron baru yang disebut readAndWritePreferences():

#### > 6. Di dalam metode readAndWritePreference, buatlah sebuah instance dari SharedPreferences:

#### > 7. Setelah membuat instance preferensi, kita membuat kode yang mencoba baca nilai kunci appCounter. Jika nilainya nol, setel ke 0; lalu naikkan nilainya:

#### > 8. Setelah itu, atur nilai kunci appCounter di preferensi ke nilai baru:

#### > 9. Memperbarui nilai status appCounter:

#### > 10. Pada metode initState di kelas \_MyHomePageState, panggil metode readAndWritePreference() dengan kode yang dicetak tebal:

#### > 11. Dalam metode build, tambahkan kode berikut ini di dalam widget Container:

#### > 12. Jalankan aplikasi. Saat pertama kali membukanya, Anda akan melihat layar yang mirip dengan yang berikut ini:

#### > 13. Tambahkan metode baru ke kelas \_MyHomePageState yang disebut deletePreference(), yang akan menghapus nilai yang disimpan:

#### > 14. Dari properti onPressed dari widget ElevatedButton di metode build(), memanggil metode deletePreference(), dengan kode di cetak tebal:

#### > 15. Jalankan aplikasi lagi. Sekarang, saat Anda menekan tombol Reset penghitung, nilai appCounter akan dihapus

### Praktikum 4

#### >

#### >

#### >

#### >

#### >

#### >

#### >

#### >

#### >

### Praktikum 5

#### >

#### >

#### >

#### >

#### >

#### >

#### >

#### >

#### >

### Praktikum 6

#### >

#### >

#### >

#### >

#### >

#### >

#### >

#### >

#### >

#### >

#### >