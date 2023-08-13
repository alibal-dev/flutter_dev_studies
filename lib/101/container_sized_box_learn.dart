// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
              width: 3,
              height: 2,
              child: Text('ali' * 1),
            ),
            SizedBox.shrink(),
            SizedBox.square(
              dimension: 50,
              child: Text('a' * 25),
            ),
            Container(
              constraints: const BoxConstraints(
                  maxWidth: 200, minWidth: 100, minHeight: 10, maxHeight: 120),
              child: Text('aa' * 10, maxLines: 2),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              /* decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  /* color: Colors.red, */
                  gradient:
                      const LinearGradient(colors: [Colors.blue, Colors.black]),
                  shape: BoxShape.circle,
                  border: Border.all(width: 10, color: Colors.blue)),
              alignment: Alignment.centerRight, */
              decoration: ProjectUtility.boxDecoraiton,
            ),
          ],
        ));
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoraiton = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
      boxShadow: const [
        BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
      ],
      border: Border.all(width: 10, color: Colors.white12));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
            boxShadow: const [
              BoxShadow(
                  color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
            ],
            border: Border.all(width: 10, color: Colors.white12));
}
