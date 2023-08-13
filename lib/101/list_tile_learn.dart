// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  final imageUrl =
      "https://fastly.picsum.photos/id/349/536/354.jpg?hmac=g43WSdwzooLdvTRlIE6LooIX3T6QHi_MCnk6Ia-DB_I";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: Image.network(
              imageUrl,
              height: 100,
              fit: BoxFit.cover,
            ),
            onTap: () {},
            subtitle: Text('How do you use your card'),
            leading: Icon(Icons.money),
            trailing: Icon(Icons.chevron_right_outlined),
          )
        ],
      ),
    );
  }
}
