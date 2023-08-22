import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({super.key});

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(ImagePaths.meditating_girl.path()),
            ImagePaths.meditating_girl.toWidget(),
          ],
        ),
      ),
    );
  }
}

enum ImagePaths { meditating_girl }

extension ImagePathsExtension on ImagePaths {
  String path() {
    return 'assets/$name.png';
  }

  Widget toWidget() {
    return Image.asset(path());
  }
}
