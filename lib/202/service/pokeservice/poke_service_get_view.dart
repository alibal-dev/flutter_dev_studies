import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dev/202/service/pokeservice/poke_model.dart';

class PokeServiceView extends StatefulWidget {
  const PokeServiceView({super.key});

  @override
  State<PokeServiceView> createState() => _PokeServiceViewState();
}

class _PokeServiceViewState extends State<PokeServiceView> {
  List<Pokemon>? pokemonList;
  late final Dio _dio;
  final _baseUrl = 'https://pokeapi.co/api/v2/ability/150/';

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    fetchPokemon();
  }

  Future<void> fetchPokemon() async {
    final response = await _dio.get("https://pokeapi.co/api/v2/pokemon/150/");

    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;
      debugPrint(data.toString());

      if (data is Map<String, dynamic>) {
        setState(() {
          pokemonList = [Pokemon.fromJson(data)];
          debugPrint(response.data.runtimeType.toString());
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (pokemonList != null)
              Text("Pokemon Name: ${pokemonList![0].name ?? 'N/A'}"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: fetchPokemon,
              child: Text('Fetch Pokemon'),
            ),
          ],
        ),
      ),
    );
  }
}
