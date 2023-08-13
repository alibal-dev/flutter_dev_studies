// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TitleTextWidget(text: 'Ali'),
        TitleTextWidget(text: 'BAL'),
        _emptyBox(),
        TitleTextWidget(text: 'Ali'),
        TitleTextWidget(text: 'BAL'),
      ]),
    );
  }

  SizedBox _emptyBox() => SizedBox(height: 10);
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
