// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_dev/demos/meditation_app/app_settings.dart';
import 'package:flutter_dev/demos/meditation_app/course_details.dart';

class MeditatePage extends StatefulWidget {
  const MeditatePage({super.key});

  @override
  State<MeditatePage> createState() => _MeditatePageState();
}

class _MeditatePageState extends State<MeditatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 66),
            child: Center(
              child: Column(
                children: [
                  Text('Meditate',
                      style: Theme.of(context).textTheme.headlineLarge),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      'we can learn how to recognize when our minds\nare doing their normal everyday acrobatics',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Buttons_Row(),
                  SizedBox(
                    height: 30,
                  ),
                  DailyThoughtCard(),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 400,
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
                              CourseCards(),
                              CourseCards(),
                              CourseCards(),
                              CourseCards(),
                              CourseCards(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CourseCards extends StatelessWidget {
  const CourseCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CourseDetails()),
        );
      },
      child: Text(
        'Courses',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}

class Buttons_Row extends StatelessWidget {
  const Buttons_Row({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
        child: Row(children: [
          SizedBox(
            height: 80,
            width: 100,
            child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.all_inclusive_rounded),
                label: Text('All')),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 80,
            width: 100,
            child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                label: Text('My')),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 80,
            width: 111,
            child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.mood_bad),
                label: Text('Anxious')),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 80,
            width: 100,
            child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.king_bed_sharp),
                label: Text('Sleep')),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 80,
            width: 100,
            child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.child_care),
                label: Text('Kids')),
          ),
        ]),
      ),
    );
  }
}
