// ignore_for_file: prefer_const_constructors, unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_dev/101/image_learn.dart';
import 'package:flutter_dev/101/navigate_detail_learn.dart';
import 'package:flutter_dev/demos/color_demos_view.dart';

class NavigationLearn extends StatefulWidget {
  NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
  List<int> selectedItems = [];

  void addSelected(int index) {
    selectedItems.add(index);
  }
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Placeholder(
              color: Colors.green,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final response = await navigateToWidgetNormal<bool>(
              context, NavigateDetailLearn());
          if (response == true) {}
        },
        child: Icon(Icons.navigation),
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: RouteSettings()));
  }
}

Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
  return Navigator.of(context).push<T>(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
      fullscreenDialog: true,
      settings: RouteSettings()));
}
