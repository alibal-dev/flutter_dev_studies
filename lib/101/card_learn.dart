// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, unused_element, sort_child_properties_last

import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});
  final String _title = 'AppBar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Column(
        children: [
          Card(
            child: Center(
              child: SizedBox(
                height: 100,
                width: 100,
                child: Center(
                    child: Text(
                  'ALİ\nBAL',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ),
          const _CustomCard(
            child: SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Text(
                  'Ali',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class projectMargins {
  static const cardMargin = EdgeInsets.symmetric(horizontal: 100);
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: projectMargins.cardMargin,
      color: Color(0xFF00BD7B),
      child: child,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}
