// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_element

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgorundColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _backgorundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialColor != _backgorundColor && _backgorundColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgorundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgorundColor,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value == _MyColors.red.index) {
              changeBackgroundColor(Colors.red);
            } else if (value == _MyColors.yellow.index) {
              changeBackgroundColor(Colors.yellow);
            } else if (value == _MyColors.blue.index) {
              changeBackgroundColor(Colors.blue);
            }
          },
          items: [
            BottomNavigationBarItem(
                icon: _ColorContainer(color: Colors.red), label: 'Red'),
            BottomNavigationBarItem(
                icon: _ColorContainer(color: Colors.yellow), label: 'Yellow'),
            BottomNavigationBarItem(
                icon: _ColorContainer(color: Colors.blue), label: 'Blue')
          ]),
    );
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  final Color color;

  const _ColorContainer({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 20,
      height: 20,
    );
  }
}
