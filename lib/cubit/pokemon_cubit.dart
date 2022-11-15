import 'package:bloc/bloc.dart';
import 'package:pokemon/models/pokemon_model.dart';
import 'package:pokemon/services/pokemon_service.dart';

part 'pokemon_state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit() : super(PokemonInitial());

  void fetchPokemon() async{
    try {
      emit(PokemonLoading());

      List<PokemonModel> pokemons = await PokemonService().fetchPokemon();
      
      emit(PokemonSuccess(pokemons));
    } catch (e) {
      emit(PokemonFailed(e.toString()));
    }
  }
}
