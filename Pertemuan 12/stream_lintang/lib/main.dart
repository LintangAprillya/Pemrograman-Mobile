import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

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
    // super.initState();
    // colorStream = ColorStream();
    // changeColor(); // Panggil method changeColor

    //langkah 8 prak 2
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;
    stream.listen((event) {
      setState(() {
        lastNumber = event;
      });
    });
    super.initState();
  }

  // Langkah 11: Ubah isi Scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lintang Stream'),
      ),
      //prak2 lkh 11
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(lastNumber.toString()),
            ElevatedButton(
              onPressed: () => addRandomNumber(),
              child: const Text('New Random Number'),
            )
          ],
        ),
      ),
    );
  }

  //prak 2 lkh 7
  int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;

  //prak 2 lkh 9
  @override
  void dispose() {
    numberStreamController.close();
    super.dispose();
  }

  //prak 2 lkh 10
  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    numberStream.addNumberToSink(myNum);
  }
}
