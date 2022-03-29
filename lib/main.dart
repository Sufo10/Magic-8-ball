import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      home: BallPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      appBar: AppBar(
        title: const Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade800,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),

    );
  }
}

