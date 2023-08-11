// ignore_for_file: unused_import, prefer_const_constructors, unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dev/101/container_sized_box_learn.dart';
import 'package:flutter_dev/101/text_learn_view.dart';
import 'package:flutter_dev/random_trials.dart';
import '101/app_bar_learn.dart';
import '101/button_learn.dart';
import '101/card_learn.dart';
import '101/color_learn.dart';
import '101/column_row_learn.dart';
import '101/custom_widget_learn.dart';
import '101/icon_learn.dart';
import '101/image_learn.dart';
import '101/indicator_learn.dart';
import '101/list_tile_learn.dart';
import '101/list_view_builder_learn.dart';
import '101/list_view_learn.dart';
import '101/navigation_learn.dart';
import '101/padding_learn.dart';
import '101/page_view_learn.dart';
import '101/scaffold_learn.dart';
import '101/stack_learn.dart';
import '101/stateful_life_cycle_learn.dart';
import '101/statefull_learn.dart';
import '101/stateless_learn.dart';
import '101/text_field_learn.dart';
import '202/model_learn_view.dart';
import '202/service/new_service_learn_view,.dart';
import '202/service/service_learn_view.dart';
import '202/service/service_post_view.dart';
import '202/tab_bar_learn.dart';
import 'credit_card_payment_design/add_new_card.dart';
import 'credit_card_payment_design/input_file.dart';
import 'credit_card_payment_design/my_widget_card.dart';
import 'credit_card_payment_design/widget_credit_card.dart';
import 'demos/color_demos_view.dart';
import 'demos/color_life_cycle_demos_view.dart';
import 'demos/my_collections_demos.dart';
import 'demos/note_demos_view.dart';
import 'demos/stack_demo_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))))),
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: (const AppBarTheme(
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.blueAccent,
            actionsIconTheme: IconThemeData(color: Colors.black),
            toolbarTextStyle: TextStyle(color: Colors.black),
            systemOverlayStyle: SystemUiOverlayStyle.dark,
          )),
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(strokeAlign: 5)))),
      home: ServiceLearnNew(),
    );
  }
}
