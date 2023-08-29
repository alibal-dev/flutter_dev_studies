/* import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'hp_models.dart'; // Import your HpCharacters model
import 'hp_repo.dart'; // Import your fetchCharacters function

final charactersProvider = FutureProvider<List<HpCharacters>>((ref) async {
  return fetchCharacters();
});

final filterQueryProvider = StateProvider<String>((ref) => '');

final filteredCharactersProvider = Provider<List<HpCharacters>>((ref) {
  final query = ref.watch(filterQueryProvider).state;
  final hpList = ref.watch(charactersProvider).data?.value ?? [];
  return filterCharacters(hpList, query);
});

final removedCharacterIndexProvider = StateProvider<int?>((ref) => null);

final filteredAndRemovedCharactersProvider = Provider<List<HpCharacters>>((ref) {
  final removedIndex = ref.watch(removedCharacterIndexProvider).state;
  final filteredList = ref.watch(filteredCharactersProvider);

  if (removedIndex != null) {
    final updatedList = List<HpCharacters>.from(filteredList);
    updatedList.removeAt(removedIndex);
    return updatedList;
  } else {
    return filteredList;
  }
});
 */