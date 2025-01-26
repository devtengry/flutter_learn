import 'package:flutter/material.dart';

class ColorChangeState extends StatefulWidget {
  const ColorChangeState({super.key});

  @override
  State<ColorChangeState> createState() => _ColorChangeStateState();
}

class _ColorChangeStateState extends State<ColorChangeState> {
  static Color _backroundColor = Colors.black;

  void changeBackroundColor(_backroundColor) {
    setState(() {
      _backroundColor = Colors.amber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backroundColor,
      body: Column(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == ColorEnum.red.index) {
            changeBackroundColor(_backroundColor = Colors.redAccent);
          } else if (value == ColorEnum.blue.index) {
            changeBackroundColor(_backroundColor = Colors.blueAccent);
          } else {
            changeBackroundColor(_backroundColor = Colors.greenAccent);
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.reddit), label: 'First'),
          BottomNavigationBarItem(icon: Icon(Icons.facebook), label: 'Second'),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Third'),
        ],
      ),
    );
  }
}

enum ColorEnum { red, blue, green }
