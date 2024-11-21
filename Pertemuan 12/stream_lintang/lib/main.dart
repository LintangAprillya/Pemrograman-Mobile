import 'package:flutter/material.dart';
import 'stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lintang Stream',
      theme: ThemeData(
        primaryColor:
            Colors.pinkAccent, // Gunakan primaryColor untuk warna kustom
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  // Langkah 8 prak 1: Deklarasikan variabel bgColor dan colorStream
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  // Langkah 9: Tambahkan method changeColor
  void changeColor() async {
    // await for (var eventColor in colorStream.getColors()) {
    //   setState(() {
    //     bgColor = eventColor;
    //   });
    // }

    //langkah 13
    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
  }

  // Langkah 10: Override initState
  @override
  void initState() {
    super.initState();
    colorStream = ColorStream();
    changeColor(); // Panggil method changeColor
  }

  // Langkah 11: Ubah isi Scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lintang Stream'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: bgColor, // Gunakan bgColor sebagai latar belakang
        ),
      ),
    );
  }
}
