import 'package:poke_api/core/data/entities/pokemon_entity.dart';

abstract class PokemonDataSource {
  Stream<Iterable<PokemonEntity>> getPokemons();
  Future<PokemonEntity> getPokemon(String name);

  void storePokemon(PokemonEntity pokemon);
  void storePokemons(Iterable<PokemonEntity> pokemons);
}