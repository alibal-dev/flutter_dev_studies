import 'package:flutter/material.dart';
import 'package:flutter_dev/101/dart_singleton_example.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({Key? key}) : super(key: key);
  final String title = 'Food';
  @override
  Widget build(BuildContext context) {
    NonSingleton nonSingleton = NonSingleton();
    nonSingleton.nonSomeMethod();

    Singleton.instance.someMethod();
    Singleton1.instance.someMethod();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFootButton(
                  title: title,
                  onPressed: () {},
                )),
          )),
          const SizedBox(height: 100),
          CustomFootButton(title: title, onPressed: () {}),
        ],
      ),
    );
  }
}

mixin _ColorsUtility {
  final Color redColor = Colors.red;
  final Color white = Colors.white;
}

mixin _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}
//-------------------------------------------------------
//Neden Class olarak değil Mixin olarak almamız gerekti
//Videoda Class olarak kullandığında çalışıyordu
//-------------------------------------------------------

class CustomFootButton extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomFootButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: redColor, shape: const StadiumBorder()),
        onPressed: onPressed,
        child: Padding(
          padding: normal2xPadding,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: white, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
