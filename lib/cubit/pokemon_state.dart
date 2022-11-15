part of 'pokemon_cubit.dart';

@immutable
abstract class PokemonState {}

class PokemonInitial extends PokemonState {}

class PokemonLoading extends PokemonState {}

class PokemonSuccess extends PokemonState {
  final List<PokemonModel> pokemons;

  PokemonSuccess(this.pokemons);

  @override
  List<Object> get props => [pokemons];
}

class PokemonFailed extends PokemonState {
  final String error;

  PokemonFailed(this.error);

  @override
  List<Object> get props => [error];
}
