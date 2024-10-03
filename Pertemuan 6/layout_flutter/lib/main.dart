import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Method untuk membuat button column
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Mengatur ukuran kolom agar minimal
      mainAxisAlignment: MainAxisAlignment.center, // Pusatkan isi kolom
      children: [
        Icon(icon, color: color), // Ikon di atas teks
        Container(
          margin: const EdgeInsets.only(top: 8), // Jarak atas untuk teks
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12, // Ukuran font
              fontWeight: FontWeight.w400, // Berat teks
              color: color, // Warna teks sesuai parameter
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // Membuat titleSection
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    // Membuat buttonSection
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Membuat textSection
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Panderman adalah sebuah gunung yang terletak di Kota Batu, Jawa Timur, Indonesia, '
        'dengan ketinggian sekitar 2.045 meter di atas permukaan laut. Gunung ini menjadi destinasi favorit '
        'bagi para pendaki pemula karena jalur pendakiannya yang relatif mudah dan aksesnya yang dekat dengan '
        'pusat kota. Dari puncaknya, pendaki dapat menikmati panorama indah hamparan Kota Batu dan Malang, '
        'terutama saat malam hari ketika lampu-lampu kota menyala terang. Pemandangan sunrise dan sunset '
        'dari Gunung Panderman juga sangat populer, dengan latar belakang awan yang indah dan pegunungan lain '
        'seperti Gunung Arjuno dan Gunung Kawi. Jalur pendakian dimulai dari Desa Pesanggrahan dan biasanya '
        'memakan waktu sekitar 2 hingga 3 jam tergantung kecepatan pendaki, melewati area hutan pinus yang '
        'sejuk dan asri. Meskipun tidak terlalu tinggi, Gunung Panderman tetap menawarkan pengalaman mendaki '
        'yang menyenangkan, menjadikannya tempat berkemah atau sekadar menikmati ketenangan alam yang '
        'populer di wilayah Jawa Timur. \n\n'
        'Lintang Aprillya Sari - 2241720231',
        softWrap: true,
      ),
    );

    // Menggabungkan semua section dalam body
    return MaterialApp(
      title: 'Flutter layout demo - Lintang',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo - Lintang'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/panderman.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection, // Bagian judul
            buttonSection, // Bagian tombol
            textSection, // Bagian teks
          ],
        ),
      ),
    );
  }
}
