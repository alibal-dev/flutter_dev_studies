// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_dev/demos/meditation_app/app_settings.dart';

class NewAccountPage extends StatefulWidget {
  const NewAccountPage({super.key});

  @override
  State<NewAccountPage> createState() => _NewAccountPageState();
}

class _NewAccountPageState extends State<NewAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 133),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Create Your Account',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            ContinueWithFacebook(),
            ContinueWithGoogle(),
            LogInMail(),
            EmailField(),
            UserNameField(),
            PasswordField(),
            PrivacyPolicy(),
            StartButton()
          ],
        ),
      ),
    );
  }
}
