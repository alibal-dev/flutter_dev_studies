// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_dev/demos/meditation_app/app_settings.dart';
import 'package:flutter_dev/demos/meditation_app/med_app_images.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.welcomebackground,
      body: Column(children: const [
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 50),
            child: JpgImage(name: 'appicon', style: 'png'),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 75),
          child: Text(
            'Welcome to Silent Moon',
            style: TextStyle(
                fontSize: 27, color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Text(
            'Explore the app.\n Find some peace of mind to prepare for meditation',
            style: TextStyle(color: Colors.white, fontSize: 17),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 96),
          child: JpgImage(name: 'meditating_girl', style: 'png'),
        ),
        Padding(
          padding: EdgeInsets.only(top: 84),
          child: WelcomeButton(),
        ),
      ]),
    );
  }
}
