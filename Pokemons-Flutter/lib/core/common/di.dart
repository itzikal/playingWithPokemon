
import 'package:poke_api/core/data/database/pokemon_data_base.dart';
import 'package:poke_api/core/data/database/pokemon_local_data_source.dart';
import 'package:poke_api/core/data/network/poke_api.dart';
import 'package:poke_api/core/data/network/pokemon_network_data_source.dart';
import 'package:poke_api/core/data/pokemon_data_source.dart';
import 'package:poke_api/core/data/pokemon_data_source.dart';
import 'package:poke_api/core/data/repositories/pokemon_repository_impl.dart';
import 'package:poke_api/core/domain/pokemon_repository.dart';
import 'package:dio/dio.dart';

DI di() => IOC.di;

class IOC {
  static late DI di;
}

class DI {
  PokemonRepository? _pokemonRepository;
  PokemonDataSource? _localDataSource;
  PokemonDataSource? _remoteDataSource;
  PokemonDataBase? _database;
  PokeApi? _restClient;

  PokemonDataBase get database => _database ??= PokemonDataBase();
  PokeApi _createRestClient() => _restClient ??= PokeApi(Dio());

  PokemonDataSource _createLocalDataSource() => _localDataSource ??= PokemonLocalDataSource(database);
  PokemonDataSource _createRemoteDataSource() => _remoteDataSource ??= PokemonNetworkDataSource(restClient: _createRestClient());

  PokemonRepository get pokemonRepository => _pokemonRepository ??= PokemonRepositoryImpl(_createLocalDataSource(), _createRemoteDataSource());
}