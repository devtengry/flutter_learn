import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    var image = Image.network(
      'https://picsum.photos/200',
      errorBuilder: (context, error, stackTrace) =>
          Center(child: Text('Unable to load image')),
    );

    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Expanded(
              flex: 60,
              child: _SizedImageBox(),
            ),
            Expanded(
              child: SizedBox(
                width: 400,
                height: 400,
                child: image,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _SizedImageBox extends StatelessWidget {
  const _SizedImageBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 400,
      child: Container(
        color: Colors.indigoAccent,
        child: JpgImage(name: ImageItems().buildingImage),
      ),
    );
  }
}

class ImageItems {
  final String buildingImage = 'assets/images/dummy_image';
  final String carsImage = 'assets/images/cars';
}

class JpgImage extends StatelessWidget {
  const JpgImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
  }

  String get _nameWithPath {
    if (name.startsWith('assets/images')) {
      return '$name.jpg';
    }
    return 'assets/images/$name.jpg';
  }
}
