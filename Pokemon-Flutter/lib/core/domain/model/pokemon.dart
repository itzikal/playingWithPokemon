import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';

part 'pokemon.g.dart';

const String ImageUrlTemplate = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/{id}.png";

@freezed
class Pokemon with _$Pokemon {

  String get id {
    RegExp regex = RegExp(r'(\d+)\/$');
    Match? match = regex.firstMatch(url);
    return match?.group(1) ?? "";
  }

  String get image => ImageUrlTemplate.replaceFirst("{id}", id);

  @JsonSerializable()
  const factory Pokemon({required String name,
    required String url}) = _Pokemon;

  const Pokemon._();

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}
