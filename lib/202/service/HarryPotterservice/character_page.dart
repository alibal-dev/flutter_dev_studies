import 'package:flutter/material.dart';
import 'package:flutter_dev/202/service/HarryPotterservice/hp_model.dart';

class CharacterDetailPage extends StatefulWidget {
  const CharacterDetailPage({super.key, required this.selectedCharacter});

  final HpCharacters selectedCharacter;

  @override
  State<CharacterDetailPage> createState() => _CharacterDetailPageState();
}

class _CharacterDetailPageState extends State<CharacterDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
          child: Column(
        children: [
          Image.network(widget.selectedCharacter.image ?? ""),
          Text(widget.selectedCharacter.name ?? "-"),
        ],
      )),
    );
  }
}
