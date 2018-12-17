import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State createState() => new _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  final Random _random = new Random();
  Color _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Hello There!'),
      ),
      body: new Center(

        child: new GestureDetector(
          onTap: () {
            setState(() {
              _color = new Color.fromRGBO(
                  _random.nextInt(256),
                  _random.nextInt(256),
                  _random.nextInt(256),
                  1.0
              );
            });
          },
          child: new Container(
            color: _color,
            alignment: Alignment(0.0, 0.0),
            child: new Text('Hello Solid Software!'),
          ),
        ),
      ),
    );
  }
}
