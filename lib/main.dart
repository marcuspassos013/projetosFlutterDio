import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  

  List colors = [Colors.red, Colors.green, Colors.yellow,Colors.blue,Colors.pink,Colors.purple];
  Random random =  Random();

  late int index = 1;

  void changeIndex() {
    setState(() => index = random.nextInt(4));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: ()=> changeIndex(),
        child:  Text('Click para o botão mudar de cor'),
        color: colors[index],
      ),
    );
  }
}