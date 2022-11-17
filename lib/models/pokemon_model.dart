import 'package:equatable/equatable.dart';

class PokemonModel extends Equatable{
  final String? name;
  final String? url;

  PokemonModel({
    this.name,
    this.url, 
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) => 
    PokemonModel(
      name: json['name'],
      url: json['url'],
    );

  @override
  List<Object?> get props => [name, url];
}