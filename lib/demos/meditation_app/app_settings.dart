// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dev/demos/meditation_app/home_page.dart';
import 'package:flutter_dev/demos/meditation_app/welcome_page.dart';
import 'package:flutter_dev/demos/meditation_app/widget/login_button.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'med_app_images.dart';
import 'sign_in_page.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}
//gridview

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  bool isChecked = false; // State for the checkbox

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 20),
            child: RichText(
              text: TextSpan(
                text: 'I have read the ',
                style: TextStyle(fontSize: 16, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue.shade900,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 120),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Password',
            filled: true,
            fillColor: colors.fieldBg,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
      child: TextField(
          decoration: InputDecoration(
              hintText: 'Email Adress',
              filled: true,
              fillColor: colors.fieldBg,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)))),
    );
  }
}

class LogInMail extends StatelessWidget {
  const LogInMail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Text(
        'OR LOG IN WITH EMAIL',
        style: TextStyle(color: Colors.grey.shade700, fontSize: 15),
      ),
    );
  }
}

class ContinueWithFacebook extends StatelessWidget {
  const ContinueWithFacebook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SizedBox(
        width: 347,
        height: 70,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(colors.facebookBg),
            ),
            onPressed: () {
              launchUrlString('https://www.facebook.com/');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.facebook),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'CONTINUE WITH FACEBOOK',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                )
              ],
            )),
      ),
    );
  }
}

class ContinueWithGoogle extends StatelessWidget {
  const ContinueWithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: 347,
        height: 70,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromRGBO(255, 255, 255, 1)),
            ),
            onPressed: () {
              launchUrlString('https://accounts.google.com/');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                JpgImage(name: 'google_image', style: 'jpg'),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'CONTINUE WITH GOOGLE',
                  style: TextStyle(
                      fontSize: 18, color: Color.fromRGBO(0, 0, 0, 1)),
                  textAlign: TextAlign.center,
                )
              ],
            )),
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 133),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'Welcome Back!',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

class UserNameField extends StatelessWidget {
  const UserNameField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: TextField(
          decoration: InputDecoration(
              hintText: 'Username',
              filled: true,
              fillColor: colors.fieldBg,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)))),
    );
  }
}

class SignButtons extends StatelessWidget {
  const SignButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60),
      child: Column(
        children: [
          CustomButton(
            label: "SIGN UP",
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: RichText(
              text: TextSpan(
                text: 'ALREADY HAVE AN ACCOUNT ?',
                style: TextStyle(fontSize: 16, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'LOG IN',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue.shade900,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInPage(),
                              ));
                        }
                      },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Texts extends StatelessWidget {
  const Texts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            'We are what we do',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            'Thousands of people are using silent moon\n for smalls meditation',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w200),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class SittingGirlImage extends StatelessWidget {
  const SittingGirlImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 160, left: 43.69, right: 47),
        child: SizedBox(
          height: 242,
          width: 360,
          child: JpgImage(
            name: 'sitting_girl',
            style: 'jpg',
          ),
        ));
  }
}

class SilentMoonImage extends StatelessWidget {
  const SilentMoonImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.2, // 20% of screen width
        right: MediaQuery.of(context).size.width * 0.21, // 21% of screen width
        top: MediaQuery.of(context).size.height * 0.05,
      ),
      child: SizedBox(
          height: 30,
          width: 168,
          child: JpgImage(
            name: 'silent_moon',
            style: 'jpg',
          )),
    );
  }
}

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: SizedBox(
        width: 347,
        height: 65,
        child: ElevatedButton(
          style: ButtonStyle(),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WelcomePage()),
            );
          },
          child: Text('GET STARTED', style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: SizedBox(
        width: 347,
        height: 65,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: Text('GET STARTED',
              style: TextStyle(fontSize: 20, color: Colors.black)),
        ),
      ),
    );
  }
}

class HomePageCards extends StatelessWidget {
  const HomePageCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205,
      child: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Card(
                  color: colors.welcomebackground,
                ),
                Card(
                  color: Colors.amberAccent,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DailyThoughtCard extends StatelessWidget {
  const DailyThoughtCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        width: 370,
        child: Card(
          color: Colors.blue.shade900,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Daily Thought',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      Text(
                        'MEDITATION = 3-10 MIN',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.black,
                    ),
                  )
                ],
              )
            ]),
          ),
        ));
  }
}

class ImageIcon extends StatelessWidget {
  const ImageIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {}, icon: Image.network('https://picsum.photos/200'));
  }
}

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue, // Change this to your desired primary color
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.blueAccent,
      actionsIconTheme: IconThemeData(color: Colors.black),
      toolbarTextStyle: TextStyle(color: Colors.black),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(width: 5),
      ),
    ),
    textTheme: TextTheme(
        headlineLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(fontSize: 20),
        bodyMedium: TextStyle(fontSize: 15)),
  );
}

mixin colors {
  static const Color fieldBg = Color.fromRGBO(242, 243, 247, 1);
  static const Color facebookBg = Color.fromRGBO(66, 103, 178, 1.0);
  static const Color welcomebackground = Color.fromRGBO(142, 151, 253, 1);
}
