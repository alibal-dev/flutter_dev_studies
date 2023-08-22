import 'dart:convert';

PokemonModel effectFromJson(String str) =>
    PokemonModel.fromJson(json.decode(str));

String effectToJson(PokemonModel data) => json.encode(data.toJson());

class PokemonModel {
  List<dynamic>? effectChanges;
  List<EffectEntry>? effectEntries;
  List<FlavorTextEntry>? flavorTextEntries;
  Generation? generation;
  int? id;
  bool? isMainSeries;
  String? name;
  List<Name>? names;
  List<Pokemon>? pokemon;

  PokemonModel({
    this.effectChanges,
    this.effectEntries,
    this.flavorTextEntries,
    this.generation,
    this.id,
    this.isMainSeries,
    this.name,
    this.names,
    this.pokemon,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        effectChanges: json["effect_changes"] == null
            ? []
            : List<dynamic>.from(json["effect_changes"]!.map((x) => x)),
        effectEntries: json["effect_entries"] == null
            ? []
            : List<EffectEntry>.from(
                json["effect_entries"]!.map((x) => EffectEntry.fromJson(x))),
        flavorTextEntries: json["flavor_text_entries"] == null
            ? []
            : List<FlavorTextEntry>.from(json["flavor_text_entries"]!
                .map((x) => FlavorTextEntry.fromJson(x))),
        generation: json["generation"] == null
            ? null
            : Generation.fromJson(json["generation"]),
        id: json["id"],
        isMainSeries: json["is_main_series"],
        name: json["name"],
        names: json["names"] == null
            ? []
            : List<Name>.from(json["names"]!.map((x) => Name.fromJson(x))),
        pokemon: json["pokemon"] == null
            ? []
            : List<Pokemon>.from(
                json["pokemon"]!.map((x) => Pokemon.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "effect_changes": effectChanges == null
            ? []
            : List<dynamic>.from(effectChanges!.map((x) => x)),
        "effect_entries": effectEntries == null
            ? []
            : List<dynamic>.from(effectEntries!.map((x) => x.toJson())),
        "flavor_text_entries": flavorTextEntries == null
            ? []
            : List<dynamic>.from(flavorTextEntries!.map((x) => x.toJson())),
        "generation": generation?.toJson(),
        "id": id,
        "is_main_series": isMainSeries,
        "name": name,
        "names": names == null
            ? []
            : List<dynamic>.from(names!.map((x) => x.toJson())),
        "pokemon": pokemon == null
            ? []
            : List<dynamic>.from(pokemon!.map((x) => x.toJson())),
      };
}

class EffectEntry {
  String? effect;
  Generation? language;
  String? shortEffect;

  EffectEntry({
    this.effect,
    this.language,
    this.shortEffect,
  });

  factory EffectEntry.fromJson(Map<String, dynamic> json) => EffectEntry(
        effect: json["effect"],
        language: json["language"] == null
            ? null
            : Generation.fromJson(json["language"]),
        shortEffect: json["short_effect"],
      );

  Map<String, dynamic> toJson() => {
        "effect": effect,
        "language": language?.toJson(),
        "short_effect": shortEffect,
      };
}

class Generation {
  String? name;
  String? url;

  Generation({
    this.name,
    this.url,
  });

  factory Generation.fromJson(Map<String, dynamic> json) => Generation(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}

class FlavorTextEntry {
  String? flavorText;
  Generation? language;
  Generation? versionGroup;

  FlavorTextEntry({
    this.flavorText,
    this.language,
    this.versionGroup,
  });

  factory FlavorTextEntry.fromJson(Map<String, dynamic> json) =>
      FlavorTextEntry(
        flavorText: json["flavor_text"],
        language: json["language"] == null
            ? null
            : Generation.fromJson(json["language"]),
        versionGroup: json["version_group"] == null
            ? null
            : Generation.fromJson(json["version_group"]),
      );

  Map<String, dynamic> toJson() => {
        "flavor_text": flavorText,
        "language": language?.toJson(),
        "version_group": versionGroup?.toJson(),
      };
}

class Name {
  Generation? language;
  String? name;

  Name({
    this.language,
    this.name,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        language: json["language"] == null
            ? null
            : Generation.fromJson(json["language"]),
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "language": language?.toJson(),
        "name": name,
      };
}

class Pokemon {
  bool? isHidden;
  Generation? pokemon;
  int? slot;

  Pokemon({
    this.isHidden,
    this.pokemon,
    this.slot,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        isHidden: json["is_hidden"],
        pokemon: json["pokemon"] == null
            ? null
            : Generation.fromJson(json["pokemon"]),
        slot: json["slot"],
      );

  get name => null;

  Map<String, dynamic> toJson() => {
        "is_hidden": isHidden,
        "pokemon": pokemon?.toJson(),
        "slot": slot,
      };
}
