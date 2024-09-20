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

import 'package:flutter/material.dart';
import 'my_image_widget.dart'; // Ganti dengan nama file yang sesuai jika perlu

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Image App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Image App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MyImageWidget(),
              const SizedBox(height: 20), // Jarak antara gambar dan teks
              const Text(
                'Lintang Aprillya Sari',
                style: TextStyle(fontSize: 24), // Gaya teks
              ),
            ],
          ),
        ),
      ),
    );
  }
}
