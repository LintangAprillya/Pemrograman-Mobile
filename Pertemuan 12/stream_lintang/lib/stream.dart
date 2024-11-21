import 'package:flutter/material.dart';
import 'dart:async';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,

    //soal 2 praktikum 1
    Colors.pinkAccent,
    Colors.greenAccent,
    Colors.cyan,
    Colors.blueGrey,
    Colors.red
  ];

  //langkah 5 prak 1
  Stream<Color> getColors() async* {
    //langkah 6 prak 1
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    });
  }
}

//prak 2 lkh 2
class NumberStream {
  //langkah 3
  final StreamController<int> controller = StreamController<int>();

  //lkh 4
  void addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }

  //lkh 5
  close() {
    controller.close();
  }
}

//p2 lkh 13
addError() {
  controller.sink.addError('error');
}
