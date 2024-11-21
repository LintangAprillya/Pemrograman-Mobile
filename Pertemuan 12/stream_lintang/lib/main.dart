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
  Color bgColor = Colors.blueGrey;
  late StreamController<int> numberStreamController;
  late StreamSubscription subscription;
  int lastNumber = 0;

  @override
  void initState() {
    super.initState();

    // Inisialisasi StreamController untuk angka
    numberStreamController = StreamController<
        int>.broadcast(); // Menjadikan stream sebagai broadcast

    // Membuat stream dan mulai mendengarkan (listen) ke stream
    Stream<int> stream = numberStreamController.stream
        .asBroadcastStream(); // Convert ke broadcast stream

    // Langsung mendengarkan stream tanpa transformer
    subscription = stream.listen((event) {
      setState(() {
        lastNumber = event; // Update lastNumber ketika ada data baru
      });
    });

    // Transformer setup untuk stream
    final transformer = StreamTransformer<int, int>.fromHandlers(
      handleData: (value, sink) {
        sink.add(value * 10); // Perkalian nilai dengan 10
      },
      handleError: (error, trace, sink) {
        sink.add(-1); // Menangani error dengan mengirim -1 ke stream
      },
      handleDone: (sink) {
        sink.close(); // Menutup stream setelah selesai
      },
    );

    // Mendengarkan stream yang telah ditransformasikan
    numberStreamController.stream.transform(transformer).listen(
      (event) {
        setState(() {
          lastNumber = event; // Update lastNumber ketika ada data baru
        });
      },
      onError: (error) {
        setState(() {
          lastNumber = -1; // Jika error terjadi, set lastNumber ke -1
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    subscription.cancel(); // Jangan lupa membatalkan subscription saat dispose
    numberStreamController.close(); // Menutup StreamController
  }

  // Fungsi untuk menambahkan angka acak ke dalam stream
  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10); // Angka acak antara 0 dan 9
    numberStreamController.sink.add(myNum); // Menambahkan angka ke stream
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lintang Stream'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Menampilkan angka terakhir yang didapat dari stream
            Text(lastNumber.toString(),
                style: TextStyle(fontSize: 50, color: bgColor)),

            ElevatedButton(
              onPressed: () {
                addRandomNumber(); // Menambahkan angka acak ke stream
              },
              child: const Text('Add Random Number'),
            ),

            ElevatedButton(
              onPressed: () {
                stopStream(); // Menutup stream
              },
              child: const Text('Stop Subscription'),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk menutup stream
  void stopStream() {
    numberStreamController.close();
  }
}
