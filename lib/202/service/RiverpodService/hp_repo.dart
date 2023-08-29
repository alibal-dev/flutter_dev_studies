import 'dart:io';
import 'package:dio/dio.dart';
import 'hp_models.dart'; // Import your HpCharacters model

Future<List<HpCharacters>> fetchCharacters() async {
  final response =
      await Dio().get('https://hp-api.onrender.com/api/characters');
  if (response.statusCode == HttpStatus.ok) {
    final _data = response.data;
    if (_data is List) {
      return _data.map((e) => HpCharacters.fromJson(e)).toList();
    }
  }
  return [];
}
