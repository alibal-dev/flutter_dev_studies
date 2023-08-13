// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int countValue = 0;

  void incrementValue() {
    setState(() {
      countValue = countValue + 1;
    });
  }

  void decrementValue() {
    setState(() {
      countValue = countValue - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Text(
        countValue.toString(),
        style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
      )),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Increment_button(),
          Decrement_button(),
        ],
      ),
    );
  }

  FloatingActionButton Increment_button() => FloatingActionButton(
      onPressed: () {
        incrementValue(); // Call the function with parentheses ()
      },
      child: Icon(Icons.add));

  Padding Decrement_button() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: FloatingActionButton(
          onPressed: () {
            decrementValue();
          },
          child: Icon(Icons.remove)),
    );
  }
}
