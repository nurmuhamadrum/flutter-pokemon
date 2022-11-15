import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pokemon/models/pokemon_model.dart';

class PokemonService {
  String baseUrl = 'https://pokeapi.com/api/v2';

  Future<List<PokemonModel>> fetchPokemon() async {
    try {
      var url = '$baseUrl/pokemon';
      var header = {'Content-type': 'application/json'};
      var response = await http.get(Uri.parse(url), headers: header);

      List data = jsonDecode(response.body);
      List<PokemonModel> pokemons = [];
      data.map((data) => PokemonModel.fromJson(data.id, data));

      // List<PokemonModel> pokemons = response.map((e){
      //   return PokemonModel.fromJson(e.id, e.data as Map<String, dynamic>);
      // }).toList();

      return pokemons;
    } catch (e) {
      throw e;
    }
  }
}
