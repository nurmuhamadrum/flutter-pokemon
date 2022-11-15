import 'package:flutter/material.dart';
import 'package:pokemon/models/pokemon_model.dart';
import 'package:pokemon/services/pokemon_service.dart';

class PokemonProvider with ChangeNotifier {
  List<PokemonModel> _pokemons = [];
  List<PokemonModel> get pokemons => _pokemons;

  set pokemons(List<PokemonModel> pokemons) {
    _pokemons = pokemons;
    notifyListeners();
  }

  Future<void> getPokemons() async{
    try {
      List<PokemonModel> pokemons = await PokemonService().fetchPokemon();

      _pokemons = pokemons;
    } catch (e) {
      print(e);
    }
  }
}
