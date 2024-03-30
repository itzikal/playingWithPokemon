import 'package:poke_api/core/data/entities/pokemon_entity.dart';
import 'package:poke_api/core/data/pokemon_data_source.dart';
import 'package:poke_api/core/domain/model/pokemon.dart';
import 'package:poke_api/core/domain/pokemon_repository.dart';

class PokemonRepositoryImpl extends PokemonRepository {
  final PokemonDataSource _localDataSource;
  final PokemonDataSource _remoteDataSource;

  const PokemonRepositoryImpl(PokemonDataSource localDataSource, PokemonDataSource remoteDataSource):
        _localDataSource = localDataSource, _remoteDataSource = remoteDataSource, super();

  @override
  Stream<Iterable<Pokemon>> get pokemons => _localDataSource.getPokemons()
      .map((Iterable<PokemonEntity> entities) => entities.map((entity) => Pokemon(name: entity.name ??"", url: entity.url??"")));

  @override
  void fetchMorePokemons() {
    Stream<Iterable<PokemonEntity>> pokemons = _remoteDataSource.getPokemons();
    pokemons.listen((Iterable<PokemonEntity> event) {
      _localDataSource.storePokemons(event);
    });
  }
}