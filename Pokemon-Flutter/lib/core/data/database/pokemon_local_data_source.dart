import 'package:poke_api/core/data/database/pokemon_data_base.dart';
import 'package:poke_api/core/data/entities/pokemon_entity.dart';
import 'package:poke_api/core/data/pokemon_data_source.dart';

class PokemonLocalDataSource extends PokemonDataSource {
  final PokemonDataBase _db;

  PokemonLocalDataSource(PokemonDataBase dataBase) : _db = dataBase;

  @override
  Future<PokemonEntity> getPokemon(String name) {
    return Future.value(_db.getPokemon(name));
  }

  @override
  Stream<Iterable<PokemonEntity>> getPokemons() {
    return _db.getPokemons();
  }

  @override
  void storePokemon(PokemonEntity pokemon) {
    _db.putPokemon(pokemon);
  }

  @override
  void storePokemons(Iterable<PokemonEntity> pokemons) {
    _db.putPokemons(pokemons.toList());
  }

}