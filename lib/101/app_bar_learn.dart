// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = 'Welcome Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _title,
        ),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        actionsIconTheme: IconThemeData(color: Colors.black),
        toolbarTextStyle: const TextStyle(color: Colors.black),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.home))],
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.black,
            )),
      ),
    );
  }
}
