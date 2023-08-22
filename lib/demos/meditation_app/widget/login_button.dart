// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    this.onPressed,
  });
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: SizedBox(
        width: 347,
        height: 65,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(label, style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
