import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pokemon/models/pokemon_model.dart';

class PokemonService {
  Future<List<PokemonModel>> fetchPokemon() async {
    String baseUrl = 'https://pokeapi.co/api/v2';

    final url = '$baseUrl/pokemon';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = response.body;
      List jsonResponse = jsonDecode(body)['results'];

      return jsonResponse.map((data) => PokemonModel.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load data pokemon');
    }
  }
}
