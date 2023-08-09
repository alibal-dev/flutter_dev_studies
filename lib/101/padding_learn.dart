import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: projectPadding().pagePaddingVerctical +
            projectPadding().pagePaddingHorizontal,
        child: Column(
          children: [
            Container(
              color: Colors.green,
              height: 100,
              width: 200,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}

class projectPadding {
  final pagePaddingVerctical = const EdgeInsets.symmetric(vertical: 100);
  final pagePaddingHorizontal = const EdgeInsets.symmetric(horizontal: 100);
}
