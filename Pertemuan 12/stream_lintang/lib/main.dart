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
  late ColorStream colorStream;
  late StreamController<int> numberStreamController;
  late NumberStream numberStream;
  late StreamTransformer<int, int> transformer;
  int lastNumber = 0;

  @override
  void initState() {
    super.initState();

    // Initialize color stream and change color
    colorStream = ColorStream();
    changeColor();

    // Initialize number stream and controller
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;

    // Initialize transformer for stream
    transformer = StreamTransformer<int, int>.fromHandlers(
      handleData: (value, sink) {
        sink.add(value * 10); // Perbaiki penulisan, seharusnya value * 10
      },
      handleError: (error, trace, sink) {
        sink.add(-1); // Send error handling value to stream
      },
      handleDone: (sink) {
        sink.close(); // Close the stream after processing
      },
    );

    // Listen to the stream with transformation
    numberStreamController.stream.transform(transformer).listen(
      (event) {
        setState(() {
          lastNumber = event;
        });
      },
      onError: (error) {
        setState(() {
          lastNumber = -1; // Set lastNumber to -1 if error occurs
        });
      },
    );
  }

  @override
  void dispose() {
    numberStreamController.close(); // Don't forget to close the controller
    super.dispose();
  }

  // Function to handle random number addition
  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    numberStream.addNumberToSink(myNum); // Add random number to stream
  }

  void changeColor() async {
    colorStream.getColors().listen(
      (eventColor) {
        setState(() {
          bgColor = eventColor; // Update bgColor when a new color is emitted
        });
      },
      onError: (error) {
        setState(() {
          bgColor =
              Colors.red; // Handle error in color stream by setting red color
        });
      },
    );
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
            Text(lastNumber.toString()), // Display last number
            ElevatedButton(
              onPressed: () => addRandomNumber(),
              child: const Text('New Random Number'),
            ),
          ],
        ),
      ),
    );
  }
}
