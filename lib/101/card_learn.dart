import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _SizedBox(
              sizedBox: _CustomCard(child: Text('asda')),
            ),
            _SizedBox(
              sizedBox: _CustomCard(child: Text('sassssss')),
            ),
            _SizedBox(sizedBox: _CustomCard(child: Text('sdasdasd')))
          ],
        ),
      ),
    );
  }
}

class _SizedBox extends StatelessWidget {
  const _SizedBox({
    super.key,
    required this.sizedBox,
  });
  final Widget sizedBox;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 200,
      child: sizedBox,
    );
  }
}

class ProjectPadding {
  static const cardMargin = EdgeInsets.all(10);
  static final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      shape: ProjectPadding.roundedRectangleBorder,
      child: Center(child: child),
    );
  }
}
