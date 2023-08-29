/* import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'hp_state.dart';

class HarryPCharacters extends ConsumerWidget {
  const HarryPCharacters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  ref.read(filterQueryProvider).state = query;
                },
              ),
              SizedBox(
                height: 800,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ref.watch(filteredAndRemovedCharactersProvider).when(
                    data: (characters) {
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                        ),
                        itemCount: characters.length,
                        itemBuilder: (context, index) {
                          final character = characters[index];
                          return InkWell(
                              // ... card details ...
                              );
                        },
                      );
                    },
                    loading: () => CircularProgressIndicator(),
                    error: (error, stackTrace) => Text('Error fetching data.'),
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
 */