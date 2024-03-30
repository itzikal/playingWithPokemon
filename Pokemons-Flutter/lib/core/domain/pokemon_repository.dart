
import 'package:poke_api/core/domain/model/pokemon.dart';

abstract class PokemonRepository {
  const PokemonRepository();

  Stream<Iterable<Pokemon>> get pokemons;

  void fetchMorePokemons();
}
