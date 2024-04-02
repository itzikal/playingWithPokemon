import 'package:hive_flutter/hive_flutter.dart';
import 'package:poke_api/core/data/entities/pokemon_entity.dart';

class PokemonDataBase {
  late Box<PokemonEntity> _box;

  Future<void> init() async {
      await Hive.initFlutter();
      Hive.registerAdapter(PokemonEntityImplAdapter());
     _box = await Hive.openBox("Pokemons");
  }

  PokemonDataBase();

  void putPokemons(List<PokemonEntity> pokemons) {
    _box.addAll(pokemons);
  }

  PokemonEntity? getPokemon(String name){
    return _box.get(name);
  }

  Stream<Iterable<PokemonEntity>> getPokemons(){
      return _box.watch().map((event) => _box.values);
  }

  void putPokemon(PokemonEntity pokemon) {
    _box.add(pokemon);
  }
}