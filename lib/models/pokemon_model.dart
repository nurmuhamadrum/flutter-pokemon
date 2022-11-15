import 'package:equatable/equatable.dart';

class PokemonModel extends Equatable{
  final String id;
  final String name;

  PokemonModel({
    this.id = '',
    this.name = '',
  });

  factory PokemonModel.fromJson(String id, Map<String, dynamic> json) => 
    PokemonModel(
      id: id,
      name: json['name'],
    );

  @override
  List<Object?> get props => [id, name];
}