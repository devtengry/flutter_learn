import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});
  double get _pageSpacing => 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: _pageSpacing,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeadlineText(headlineText: 'Sa'),
            HeadlineText(headlineText: 'Sa2'),
            HeadlineText(headlineText: 'Sa3'),
            HeadlineText(headlineText: 'Sa4'),
            HeadlineText(headlineText: 'Sa5'),
            _CustomContainer()
          ],
        ),
      ),
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.amber,
      ),
      child: SizedBox(
        width: 100,
        height: 100,
      ),
    );
  }
}

class HeadlineText extends StatelessWidget {
  const HeadlineText({super.key, required this.headlineText});
  final String headlineText;
  @override
  Widget build(BuildContext context) {
    return Text(
      headlineText,
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
