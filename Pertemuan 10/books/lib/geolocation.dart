import 'package:flutter/material.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.blue.shade700; // Warna awal

  // Method untuk navigasi ke halaman kedua dan mengambil warna
  Future _navigateAndGetColor(BuildContext context) async {
    // Mengambil warna dari halaman kedua
    color = await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NavigationSecond()),
        ) ??
        Colors.blue; // Jika tidak ada warna yang dipilih, gunakan warna default

    // Memperbarui state dengan warna yang baru
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color, // Menggunakan warna yang dipilih
      appBar: AppBar(
        title: const Text('Lintang Navigation First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _navigateAndGetColor(
                context); // Memanggil method untuk navigasi dan mendapatkan warna
          },
        ),
      ),
    );
  }
}

// Halaman kedua untuk memilih warna
class NavigationSecond extends StatelessWidget {
  const NavigationSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Purple'),
              onPressed: () {
                Navigator.pop(
                    context, Colors.purple); // Kembali dengan warna ungu
              },
            ),
            ElevatedButton(
              child: const Text('Pink'),
              onPressed: () {
                Navigator.pop(
                    context, Colors.pink); // Kembali dengan warna pink
              },
            ),
            ElevatedButton(
              child: const Text('Teal'),
              onPressed: () {
                Navigator.pop(
                    context, Colors.teal); // Kembali dengan warna teal
              },
            ),
          ],
        ),
      ),
    );
  }
}
