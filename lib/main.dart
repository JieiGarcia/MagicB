import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Magic Eight Ball'),
            backgroundColor: Colors.blue,
          ),
          body: MagicBody(),
        ),
      ),
    ),
  );
}

class MagicBody extends StatefulWidget {
  const MagicBody({super.key});

  @override
  State<MagicBody> createState() => _MagicBodyState();
}

class _MagicBodyState extends State<MagicBody> {
  int ballN = 1;

  void buttonP() {
    ballN = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          child: Image.asset('images/ball$ballN.png'),
          onPressed: () {
            setState(() {
              buttonP();
            });
          },
        ),
      ),
    );
  }
}
