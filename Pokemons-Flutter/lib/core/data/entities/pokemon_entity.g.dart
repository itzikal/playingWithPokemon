// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonEntityImplAdapter extends TypeAdapter<_$PokemonEntityImpl> {
  @override
  final int typeId = 0;

  @override
  _$PokemonEntityImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PokemonEntityImpl(
      name: fields[0] as String?,
      url: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$PokemonEntityImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonEntityImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonEntityImpl _$$PokemonEntityImplFromJson(Map<String, dynamic> json) =>
    _$PokemonEntityImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$PokemonEntityImplToJson(_$PokemonEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
