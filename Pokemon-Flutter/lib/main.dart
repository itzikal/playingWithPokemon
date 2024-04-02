import 'package:flutter/material.dart';
import 'package:poke_api/core/common/di.dart';
import 'package:poke_api/pokemon_list/pokemon_list.dart';

void main() async{

  IOC.di = DI();
  await di().database.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Poke Api Sample"),
      ),
      body: const PokemonList(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
