import 'package:dio/dio.dart';
import 'package:poke_api/core/data/network/responses/pokemon_response.dart';
import 'package:poke_api/core/data/network/responses/pokemons_response.dart';
import 'package:retrofit/retrofit.dart';

part 'poke_api.g.dart';


@RestApi(baseUrl: 'https://pokeapi.co/api/v2/')
abstract class PokeApi {
  factory PokeApi(Dio dio, {String baseUrl}) = _PokeApi;

  @GET('pokemon')
  Future<HttpResponse<PokemonsResponse>> getPokemons(@Query('offset') int offset,  @Query('limit') int limit);

  @GET('pokemon/{name}')
  Future<HttpResponse<PokemonResponse>> getPokemon(@Path('name') final String pokemonName);
}