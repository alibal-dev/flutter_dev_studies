import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);
  // ignore: unused_field
  final String _imagePath =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Apple-book.svg/800px-Apple-book.svg.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          height: 100,
          width: 300,
          child: PngImage(name: ImageItems().creditCard),
        ),
        Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Apple-book.svg/800px-Apple-book.svg.png',
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.abc_outlined),
        )
      ]),
    );
  }
}

class ImageItems {
  final String appleWithBook =
      "assets/apple-and-book-png-transparent-apple-and-book-images-274565.png";
  final String appleBook = "assets/png/ic_apple_with_school.png";
  final String menu = 'menu';
  final String creditCard = 'credit-card';
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => 'assets/$name.png';
}
