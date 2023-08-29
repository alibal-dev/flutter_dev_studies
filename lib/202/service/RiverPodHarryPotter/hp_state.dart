import 'package:flutter_riverpod/flutter_riverpod.dart';

class HpRepository {
  // Your HpRepository implementation
}

//-------------------Notifiers-------------------

class CharacterListState {
  CharacterListState(this.hplistcharacters, this.query);

  final List<HpRepository> hplistcharacters;
  final String query;
}

class CharacterListNotifier extends StateNotifier<CharacterListState> {
  CharacterListNotifier() : super(CharacterListState([], ''));

  void removeCharacter(int index) {
    final updatedCharacters = List.of(state.hplistcharacters);
    updatedCharacters.removeAt(index);
    state = CharacterListState(updatedCharacters, state.query);
    state.hplistcharacters;
  }

  void filterCharacters(String query) {
    state = CharacterListState(state.hplistcharacters, query);
  }
}

final characterListProvider =
    StateNotifierProvider<CharacterListNotifier, CharacterListState>((ref) {
  return CharacterListNotifier();
});

final characterProvider =
    StateNotifierProvider<CharacterListNotifier, CharacterListState>((ref) {
  return CharacterListNotifier();
});
