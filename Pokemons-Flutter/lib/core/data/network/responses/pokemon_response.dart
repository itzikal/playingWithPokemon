import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_response.freezed.dart';

part 'pokemon_response.g.dart';

@freezed
class PokemonResponse with _$PokemonResponse {
  @JsonSerializable()
  const factory PokemonResponse({@JsonKey(name: "base_experience") int? baseExperience, int? height, int? weight}) =
      _PokemonResponse;

  const PokemonResponse._();

  factory PokemonResponse.fromJson(Map<String, dynamic> json) => _$PokemonResponseFromJson(json);
}
