import 'package:flutter/material.dart';
import 'package:flutter_learn/101/card_learn.dart';
import 'package:flutter_learn/101/image_learn.dart';
import 'package:flutter_learn/101/stateless_learn.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ImageLearn(),
      theme: ThemeData.dark(),
    );
  }
}
