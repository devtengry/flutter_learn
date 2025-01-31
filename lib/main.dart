import 'package:flutter/material.dart';
import 'package:flutter_learn/101/card_learn.dart';
import 'package:flutter_learn/101/image_learn.dart';
import 'package:flutter_learn/101/stateless_learn.dart';
import 'package:flutter_learn/demos/color_change/color_change_state.dart';
import 'package:flutter_learn/demos/color_change/color_change_state_two.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: ColorChangeStateTwo(),
    );
    //test
  }
}
