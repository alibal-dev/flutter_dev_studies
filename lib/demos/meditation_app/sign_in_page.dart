// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_dev/demos/meditation_app/widget/login_button.dart';

import 'app_settings.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                WelcomeText(),
                ContinueWithFacebook(),
                ContinueWithGoogle(),
                LogInMail(),
                Form(
                    child: Column(
                  children: [EmailField(), PasswordField()],
                )),
                CustomButton(label: "LOG IN"),
                TextButton(
                    onPressed: () async {},
                    child: Text(
                      'Forgot Password ?',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: TextButton(
                      onPressed: () async {},
                      child: Text('NEED AN ACCOUNT ? SIGN UP')),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
