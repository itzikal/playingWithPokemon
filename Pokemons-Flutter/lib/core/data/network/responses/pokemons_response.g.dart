// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonsResponseImpl _$$PokemonsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonsResponseImpl(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => PokemonEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonsResponseImplToJson(
        _$PokemonsResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
