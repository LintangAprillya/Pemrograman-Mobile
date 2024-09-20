import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("assets/logo_polinema.png"), // Pastikan path-nya benar
      width: 100, // Anda dapat mengatur ukuran gambar di sini
      height: 100,
    );
  }
}
