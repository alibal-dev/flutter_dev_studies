import 'package:flutter/material.dart';
import 'package:flutter_dev/202/service/HarryPotterservice/character_page.dart';
import 'package:flutter_dev/202/service/RiverPodHarryPotter/hp_repository.dart';
import 'package:flutter_dev/202/service/RiverPodHarryPotter/hp_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchHpCharacterProvider = FutureProvider((ref) async {
  final HpRepository = ref.watch(hpRepositoryProvider);
  return HpRepository.fetchHpCharacters();
});

class CharactersPage extends ConsumerWidget {
  const CharactersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final charactersAsyncValue = ref.watch(fetchHpCharacterProvider);

    return charactersAsyncValue.when(
      data: (data) {
        // Get the current query from the state
        final currentQuery = ref.watch(characterListProvider).query;

        // Filter the characters based on the query
        final filteredCharacters = data
            .where((character) => character.name!
                .toLowerCase()
                .contains(currentQuery.toLowerCase()))
            .toList();

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
                    onChanged: (query) {
                      // Update the query in the state
                      ref
                          .read(characterListProvider.notifier)
                          .filterCharacters(query);
                    },
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
                        itemCount: filteredCharacters.length,
                        itemBuilder: (context, index) {
                          final character = filteredCharacters[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CharacterDetailPage(
                                    selectedCharacter: character,
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
                                        character.image ?? "-",
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                          return const Icon(Icons.search_off);
                                        },
                                      ),
                                    ),
                                    Text(
                                      character.name ?? ' ',
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ),
                                    Text(character.dateOfBirth ?? ''),
                                    TextButton(
                                      onPressed: () {
                                        ref
                                            .read(
                                                characterListProvider.notifier)
                                            .removeCharacter(index);
                                      },
                                      child: const Text('Remove'),
                                    ),
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
      },
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (error, stackTrace) =>
          Center(child: Text('An error occurred: $error')),
    );
  }
}
