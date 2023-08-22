// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_dev/demos/meditation_app/app_settings.dart';
import 'package:flutter_dev/demos/meditation_app/med_app_images.dart';
import 'package:flutter_dev/demos/meditation_app/meditation_page.dart';
import 'package:flutter_dev/demos/meditation_app/reminder_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0; // Track the selected tab index

  static final List<Widget> _widgetOptions = <Widget>[
    HomePageContent(),
    MeditatePage(),
    ReminderPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions
          .elementAt(_selectedIndex), // Display selected tab content
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: 'Meditation',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'Reminder',
          ),

          // Add more BottomNavigationBarItems for other tabs
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 120, right: 120),
          child: JpgImage(name: 'silent_moon', style: 'jpg'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Text(
            'Good Morning',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ),
        Text(
          'We Wish you have a good day',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
        ),
        HomePageCards(),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DailyThoughtCard(),
        ),
        RecommendationText(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              buildMeditationCardWithLabel("Focus", MeditationCards()),
              buildMeditationCardWithLabel("Happiness", MeditationCards()),
              buildMeditationCardWithLabel("Relaxation", MeditationCards()),
              buildMeditationCardWithLabel("Focus 2", MeditationCards()),
              buildMeditationCardWithLabel("Relaxation 2", MeditationCards()),
            ],
          ),
        )
      ],
    );
  }
}

Widget buildMeditationCardWithLabel(
    String label, MeditationCards meditationCards) {
  return Column(
    children: [
      meditationCards,
      SizedBox(height: 8),
      Text(
        label,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

class MeditationCards extends StatelessWidget {
  const MeditationCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        height: 150,
        width: 150,
        child: Card(
          child: Image.network('https://picsum.photos/200'),
        ),
      ),
    );
  }
}

class RecommendationText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Text(
        'Recommended For You',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
      ),
    );
  }
}
