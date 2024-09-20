/*import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/image_widget.dart'; // Tambahkan import ini

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
          title: 'Flutter Demo Home Page (Lintang Aprillya Sari)'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: MyImageWidget(), // Ganti widget dengan MyImageWidget
      ),
    );
  }
}
*/

/*import 'package:flutter/material.dart';
import 'basic_widgets/loading_cupertino.dart'; // Import file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoadingCupertinoWidget(), // Tampilkan widget LoadingCupertino
    );
  }
} */

/*import 'package:flutter/material.dart';
import 'basic_widgets/fab_widget.dart'; // Import file

void main() {
  runApp(const MyFabWidget());
}*/
/*
import 'package:flutter/material.dart';
import 'basic_widgets/scaffold_widget.dart'; // Import file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ScaffoldWidget(), // Tampilkan ScaffoldWidget
    );
  }
}
*/

/*
import 'package:flutter/material.dart';
import 'basic_widgets/dialog_widget.dart'; // Import file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: DialogWidget(),
      ),
    );
  }
}

*/

/*import 'package:flutter/material.dart';
import 'basic_widgets/text_field_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyTextFieldWidget(),
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'basic_widgets/date_picker_widget.dart'; // Import file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Date Picker',
      home: const DatePickerWidget(), // Tampilkan DatePickerWidget
    );
  }
}*/
/*
import 'package:flutter/material.dart';
import 'basic_widgets/image_widget.dart'; // Pastikan nama file sesuai

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Homepage',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Homepage'),
          backgroundColor: Colors.deepPurple, // Warna app bar
        ),
        body: Container(
          color: Colors.lightBlue[50], // Warna latar belakang
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const MyImageWidget(),
                const SizedBox(height: 20), // Jarak antara gambar dan teks
                const Text(
                  'Halo!! Nama saya Lintang Aprillya Sari',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold, // Gaya teks tebal
                    color: Colors.deepPurple, // Warna teks
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Selamat datang di aplikasi saya!',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54, // Warna teks lebih lembut
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'basic_widgets/image_widget.dart'; // Pastikan nama file sesuai
import 'basic_widgets/loading_cupertino.dart'; // Import file LoadingCupertino
import 'basic_widgets/fab_widget.dart'; // Import file FAB
import 'basic_widgets/scaffold_widget.dart'; // Import file ScaffoldWidget
import 'basic_widgets/dialog_widget.dart'; // Import file DialogWidget
import 'basic_widgets/text_field_widget.dart'; // Import file TextFieldWidget
import 'basic_widgets/date_picker_widget.dart'; // Import file DatePickerWidget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Homepage',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Homepage'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MyImageWidget(),
              const SizedBox(height: 20),
              const Text(
                'Halo!! Nama saya Lintang Aprillya Sari',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Selamat datang di aplikasi saya!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const DialogWidget(); // Menampilkan DialogWidget
                    },
                  );
                },
                child: const Text('Show Dialog'),
              ),
              const SizedBox(height: 20),
              const LoadingCupertinoWidget(), // Menampilkan LoadingCupertino
              const SizedBox(height: 20),
              const MyFabWidget(), // Menampilkan FAB
              const SizedBox(height: 20),
              const TextFieldWidget(), // Menampilkan TextFieldWidget
              const SizedBox(height: 20),
              const DatePickerWidget(), // Menampilkan DatePickerWidget
            ],
          ),
        ),
      ),
    );
  }
}
