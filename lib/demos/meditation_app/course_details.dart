// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_dev/demos/meditation_app/med_app_images.dart';

import 'music_list.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          JpgImage(name: 'med_page', style: 'png'),
          Padding(
            padding: const EdgeInsets.only(top: 320, left: 20),
            child: Text(
              'Happy Morning',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 375, left: 20),
            child: Text(
              'COURSE',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 406),
            child: Text(
              'Ease the mind into a restful night\'s sleep with theese deep ,amblent tones.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 475),
            child: Row(
              children: const [
                Icon(Icons.favorite),
                Text('24.240 Favourites'),
                SizedBox(
                  width: 50,
                ),
                Icon(Icons.headphones),
                Text('35.250 Listenings')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 540),
            child: Text(
              'Pick a Narrator',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(
                top: 585,
                left: 20,
              ),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'MALE VOICE',
                      )),
                  SizedBox(
                    width: 70,
                  ),
                  TextButton(onPressed: () {}, child: Text('FEMALE VOICE')),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 630),
            child: LinearProgressIndicator(
              value: 0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 580),
            child: MusicList(),
          )
        ],
      ),
    );
  }
}
