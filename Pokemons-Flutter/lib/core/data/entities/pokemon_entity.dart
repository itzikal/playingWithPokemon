import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'pokemon_entity.freezed.dart';

part 'pokemon_entity.g.dart';

@freezed
class PokemonEntity extends HiveObject with _$PokemonEntity{

  @HiveType(typeId: 0)
  factory PokemonEntity({
    @HiveField(0) final String? name,
    @HiveField(1) final String? url,
  }) = _PokemonEntity;

  PokemonEntity._();

  factory PokemonEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonEntityFromJson(json);
}