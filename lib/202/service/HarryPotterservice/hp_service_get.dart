import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import 'character_page.dart';
import 'hp_model.dart';

class HarryPCharacters extends StatefulWidget {
  const HarryPCharacters({Key? key}) : super(key: key);

  @override
  State<HarryPCharacters> createState() => _HarryPCharactersState();
}

class _HarryPCharactersState extends State<HarryPCharacters> {
  List<HpCharacters>? hpList;
  List<HpCharacters>? tempList;

  @override
  void initState() {
    super.initState();
    fetchPostItems();
  }

  Future<void> fetchPostItems() async {
    final response =
        await Dio().get('https://hp-api.onrender.com/api/characters');
    if (response.statusCode == HttpStatus.ok) {
      final _data = response.data;
      if (_data is List) {
        setState(() {
          hpList = _data.map((e) => HpCharacters.fromJson(e)).toList();
          tempList = hpList;
        });
      }
    }
  }

  void _removeCharacters({required int index}) {
    debugPrint('The remove button was clicked');
    setState(() {
      tempList?.remove(tempList![index]);
    });
  }

  void _filterCharacters(String query) {
    setState(() {
      tempList = hpList?.where((character) {
        return character.name!.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  labelText: 'Search',
                  hintText: 'Search for a character',
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: _filterCharacters,
              ),
              SizedBox(
                height: 800,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: tempList?.length ?? 0,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CharacterDetailPage(
                                selectedCharacter: tempList![index],
                              ),
                            ),
                          );
                        },
                        child: Card(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 85,
                                  child: Image.network(
                                    tempList?[index].image ?? "-",
                                    errorBuilder: (context, error, stackTrace) {
                                      return Icon(Icons.search_off);
                                    },
                                  ),
                                ),
                                Text(
                                  tempList?[index].name ?? ' ',
                                  style: const TextStyle(color: Colors.black),
                                ),
                                Text(tempList?[index].dateOfBirth ?? ''),
                                TextButton(
                                    onPressed: () {
                                      _removeCharacters(index: index);
                                    },
                                    child: Text('Remove'))
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
