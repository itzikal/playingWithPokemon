import 'package:flutter/material.dart';
import 'package:poke_api/core/common/di.dart';
import 'package:poke_api/core/domain/model/pokemon.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  @override
  void initState() {
    super.initState();
    IOC.di.pokemonRepository.fetchMorePokemons();
  }
  
  @override
  Widget build(BuildContext context) {
   return StreamBuilder<Iterable<Pokemon>>(stream: IOC.di.pokemonRepository.pokemons, builder:(context, snapshot) {
     List<Pokemon>? data = snapshot.data?.toList();
     if(data == null){
       return const Text("Still no pokemons :( ");
     }
     return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ListTile( title: Text(data[index].name));
      });
   });
  }
}
