// ignore_for_file: must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class MusicList extends StatelessWidget {
  const MusicList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListScreen();
  }
}

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  bool showMaleList = false;
  bool showFemaleList = false;

  void _toggleMaleList() {
    setState(() {
      showMaleList = !showMaleList;
      if (showFemaleList) {
        showFemaleList = false;
      }
    });
  }

  void _toggleFemaleList() {
    setState(() {
      showFemaleList = !showFemaleList;
      if (showMaleList) {
        showMaleList = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                TextButton(
                  onPressed: _toggleMaleList,
                  child: Text('MALE VOICE'),
                ),
                SizedBox(
                  width: 70,
                ),
                TextButton(
                  onPressed: _toggleFemaleList,
                  child: Text('FEMALE VOICE'),
                ),
              ],
            ),
          ),
          if (showMaleList)
            Expanded(
              child: ListView(
                children: [
                  SongPlayerFemale(),
                  SongPlayerFemale(),
                  SongPlayerFemale(),
                  SongPlayerFemale(),
                  SongPlayerFemale(),
                  // Add more songs...
                ],
              ),
            ),
          if (showFemaleList)
            Expanded(
              child: ListView.builder(
                itemCount: labelList.length,
                itemBuilder: (context, index) {
                  return SongPlayerMale(label: labelList[index]);
                },
              ),
            ),
        ],
      ),
    );
  }
}

List<String> labelList = ["1", "2", "3", "4"];

class SongPlayerMale extends StatelessWidget {
  const SongPlayerMale({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 8, left: 20),
        child: ListTile(
          leading: CircleAvatar(child: Icon(Icons.play_arrow)),
          title: Text(label,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.amber)),
          subtitle: Text("falan filan"),
          trailing: Icon(Icons.delete),
        ));
  }
}

class SongPlayerFemale extends StatelessWidget {
  SongPlayerFemale({
    super.key,
  });
  late String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 20),
      child: Row(
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.play_arrow),
          ),
          SizedBox(
            width: 30,
          ),
          Text('Body Scan',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.amber))
        ],
      ),
    );
  }
}
