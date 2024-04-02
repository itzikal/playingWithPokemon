import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_api/core/data/entities/pokemon_entity.dart';

part 'pokemons_response.freezed.dart';

part 'pokemons_response.g.dart';

@freezed
class PokemonsResponse with _$PokemonsResponse {

  @JsonSerializable()
  const factory PokemonsResponse({ int? count,
  String? next, // "https://pokeapi.co/api/v2/pokemon?offset=20&limit=20",
  String? previous,
  List<PokemonEntity>? results}) = _PokemonsResponse;

  const PokemonsResponse._();

  factory PokemonsResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonsResponseFromJson(json);
}
