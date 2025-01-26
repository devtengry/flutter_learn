import 'package:flutter/material.dart';
import 'package:flutter_learn/demos/color_change/color_change_state.dart';

class ColorChangeStateTwo extends StatefulWidget {
  const ColorChangeStateTwo({super.key});

  @override
  State<ColorChangeStateTwo> createState() => _ColorChangeStateTwoState();
}

class _ColorChangeStateTwoState extends State<ColorChangeStateTwo> {
  Color? _backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  _backgroundColor = Colors.yellowAccent;
                });
              },
              icon: Icon(Icons.change_circle_outlined))
        ],
      ),
      body: Column(
        children: [
          Spacer(),
          Expanded(
              child: ColorChangeState(
            initialColor: _backgroundColor,
          )),
        ],
      ),
    );
  }
}
