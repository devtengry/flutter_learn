import 'package:flutter/material.dart';

class ColorChangeState extends StatefulWidget {
  final Color? initialColor;

  ColorChangeState({super.key, required this.initialColor});

  @override
  _ColorChangeStateState createState() => _ColorChangeStateState();
}

class _ColorChangeStateState extends State<ColorChangeState> {
  static Color? _backroundColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _backroundColor = widget.initialColor;
  }

  void changeBackroundColor(Color color) {
    setState(() {
      _backroundColor = color;
    });
  }

//didUpdate
  @override
  void didUpdateWidget(covariant ColorChangeState oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.initialColor != _backroundColor &&
        widget.initialColor != null) {
      changeBackroundColor(widget.initialColor!);
    }
  }

  @override
  Widget build(BuildContext context) {
    var bottomNavigationBar = BottomNavigationBar(
      onTap: (value) {
        _colorChange(value);
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.reddit), label: 'First'),
        BottomNavigationBarItem(icon: Icon(Icons.facebook), label: 'Second'),
        BottomNavigationBarItem(
            icon: Icon(Icons.sports_gymnastics_outlined), label: 'Third'),
      ],
    );
    return Scaffold(
      backgroundColor: _backroundColor,
      body: Column(),
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  void _colorChange(int value) {
    if (value == ColorEnum.red.index) {
      changeBackroundColor(_backroundColor = Colors.redAccent);
    } else if (value == ColorEnum.blue.index) {
      changeBackroundColor(_backroundColor = Colors.blueAccent);
    } else {
      changeBackroundColor(_backroundColor = Colors.greenAccent);
    }
  }
}

enum ColorEnum { red, blue, green }
