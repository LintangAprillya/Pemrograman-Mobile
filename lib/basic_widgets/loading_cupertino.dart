import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoadingCupertinoWidget extends StatelessWidget {
  const LoadingCupertinoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 30),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(
                child: const Text("Contoh button"),
                onPressed: () {},
              ),
              const CupertinoActivityIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
