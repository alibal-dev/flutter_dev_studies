// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_dev/demos/meditation_app/reminder_page.dart';

class TopicPage extends StatefulWidget {
  const TopicPage({super.key});

  @override
  State<TopicPage> createState() => _TopicPageState();
}

class _TopicPageState extends State<TopicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RichTextWidget(),
          SizedBox(
            height: 700,
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
                      ImageIcon(),
                      ImageIcon(),
                      ImageIcon(),
                      ImageIcon(),
                      ImageIcon(),
                      ImageIcon(),
                      ImageIcon(),
                      ImageIcon(),
                      ImageIcon(),
                      ImageIcon(),
                      ImageIcon(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 76,
      ),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 23,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'What Brings you \n',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: 'to Silent Moon?\n\n',
            ),
            TextSpan(
              text: 'choose a topic to focuse on',
              style: TextStyle(fontWeight: FontWeight.w200, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}

class ImageIcon extends StatelessWidget {
  const ImageIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReminderPage(),
              ));
        },
        icon: Image.network('https://picsum.photos/200'));
  }
}
