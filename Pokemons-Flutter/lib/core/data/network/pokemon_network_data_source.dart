import 'package:poke_api/core/data/entities/pokemon_entity.dart';
import 'package:poke_api/core/data/network/responses/pokemons_response.dart';
import 'package:poke_api/core/data/pokemon_data_source.dart';
import 'package:poke_api/core/data/network/poke_api.dart';
import 'package:poke_api/core/data/network/responses/pokemon_response.dart';
import 'package:retrofit/dio.dart';

class PokemonNetworkDataSource extends PokemonDataSource {
  final PokeApi _restClient;

  PokemonNetworkDataSource({required PokeApi restClient}): _restClient = restClient;

  @override
  Stream<Iterable<PokemonEntity>> getPokemons()  {
    return Stream.fromFuture(_restClient.getPokemons(0, 20).then((HttpResponse<PokemonsResponse> value) => value.data.results ?? []));
  }

  @override
  Future<PokemonEntity> getPokemon(String name) {
    return _restClient.getPokemon(name).then((HttpResponse<PokemonResponse> value) => throw "Not implemented Pokemon to entity");
  }

  @override
  void storePokemon(PokemonEntity pokemon) {
      // no need to update server.
  }

  @override
  void storePokemons(Iterable<PokemonEntity> pokemons) {
    // no need to update server.
  }
}