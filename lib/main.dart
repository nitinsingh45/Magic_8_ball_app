import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Center(child: Text('ASK ME ANYTHING')),
        backgroundColor: Colors.blue,
      ),
      body: magic8Ball(),
    ),
  ));
}

class magic8Ball extends StatefulWidget {
  @override
  _magic8BallState createState() => _magic8BallState();
}

class _magic8BallState extends State<magic8Ball> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              setState(() {
                number = Random().nextInt(5) + 1;
              });
              print('i got clicked');
            },
            child: Image(
              image: AssetImage('photo/ball$number.png'),
            ),
          ),
        ],
      ),
    );
  }
}
