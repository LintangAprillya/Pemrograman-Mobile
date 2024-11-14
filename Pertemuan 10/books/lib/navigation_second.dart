import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => NavigationSecondState();
}

class NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Purple'), // Ubah label menjadi 'Purple'
              onPressed: () {
                color = Colors.purple.shade700; // Pilih warna ungu
                Navigator.pop(context, color); // Mengirim warna kembali
              },
            ),
            ElevatedButton(
              child: const Text('Purple'), // Ubah label menjadi 'Purple'
              onPressed: () {
                color = Colors.purple.shade700; // Pilih warna ungu
                Navigator.pop(context, color); // Mengirim warna kembali
              },
            ),
            ElevatedButton(
              child: const Text('Purple'), // Ubah label menjadi 'Purple'
              onPressed: () {
                color = Colors.purple.shade700; // Pilih warna ungu
                Navigator.pop(context, color); // Mengirim warna kembali
              },
            ),
          ],
        ),
      ),
    );
  }
}
