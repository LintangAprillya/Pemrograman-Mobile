import 'package:flutter/material.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.deepPurple.shade700; // Menggunakan warna ungu

  // Fungsi untuk melakukan navigasi dan mendapatkan warna dari halaman kedua
  void _navigateAndGetColor(BuildContext context) async {
    // Menunggu hasil dari screen kedua
    final selectedColor = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SecondScreen()),
    );

    // Jika ada warna yang dipilih, update warna layar
    if (selectedColor != null) {
      setState(() {
        color = selectedColor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Lintang Navigation First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _navigateAndGetColor(context); // Memanggil fungsi navigasi
          },
        ),
      ),
    );
  }
}

// Halaman kedua untuk memilih warna
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

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
