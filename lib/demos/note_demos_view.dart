import 'package:flutter/material.dart';
import 'package:flutter_dev/101/image_learn.dart';
import 'package:flutter_dev/demos/example_page.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});

  @override
  Widget build(BuildContext context) {
    final String _text = 'Create your first menu';
    const CreateButton = const Text('Create a menu',
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black));
    var importnote = Text('Import Notes');
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Padding(
        padding: PaddingItems.horizontalPadding + PaddingItems.verticalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().menu),
            titleWidget(text: _text),
            SubtitleWidget(),
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ExamplePage();
                  }));
                },
                child: SizedBox(
                    height: ButtonHeights.buttonNormalHeight,
                    child: Center(child: CreateButton))),
            TextButton(onPressed: () {}, child: importnote)
          ],
        ),
      ),
    );
  }
}

class SubtitleWidget extends StatelessWidget {
  const SubtitleWidget({super.key, final TextAlign? textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      'your first menu' * 10,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
      textAlign: TextAlign.center,
    );
  }
}

class titleWidget extends StatelessWidget {
  const titleWidget({
    super.key,
    required String text,
  }) : _text = text;

  final String _text;

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 70);

  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
