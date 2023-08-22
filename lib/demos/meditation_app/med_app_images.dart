import 'package:flutter/material.dart';

class JpgImage extends StatelessWidget {
  const JpgImage({Key? key, required this.name, required this.style})
      : super(key: key);
  final String name;
  final String style;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => 'assets/$name.$style';
}

class ImageItems {
  final String silentmoon = "silent_moon";
  final String sittinggirl = 'sitting_girl';
  final String bckgrnd = 'bckgrnd';
  final String googleimage = 'google_image';
  final String bluesilentmoon = 'appicon';
}
