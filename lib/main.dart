import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[700],
            title: Text('Ask Me Anything'),
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballImageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballImageNumber = getRandomBallNumber();
            });
          },
            child: Image.asset('images/ball$ballImageNumber.png'),
        ),
      ),
    );
  }

  int getRandomBallNumber (){
    return Random().nextInt(5) + 1;
  }
}
