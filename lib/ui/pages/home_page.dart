// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/cubit/pokemon_cubit.dart';
import 'package:pokemon/models/pokemon_model.dart';
import 'package:pokemon/services/pokemon_service.dart';
import 'package:pokemon/ui/widgets/pokemon_tile.dart';
import '../../shared/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<PokemonModel> listPokemon = [];
  // PokemonService pokemonService = PokemonService();

  late Future<PokemonModel> futurePokemon;

  @override
  void initState() {
    // futurePokemon = fetchPokemon();
    context.read<PokemonCubit>().fetchPokemon();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy, \nNur Muhamad Rum',
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Let\'s find your pokemon!',
                    style:
                        greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  ),
                ],
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/icon_profile.png'))),
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
        child: Text(
          'Pokemon Hunt',
          style: blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
        ),
      );
    }

    Widget pokemonList(List<PokemonModel> pokemons) {
      return Container(
        margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin, bottom: 100),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: pokemons.map((PokemonModel pokemon) {
              return PokemonTile(pokemon);
            }).toList()),
      );
    }

    return BlocConsumer<PokemonCubit, PokemonState>(
      listener: (context, state) {
        if (state is PokemonFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            content: Text(state.error),
          ));
        }
      },
      builder: (context, state) {
        print('state value : $state');
        if (state is PokemonSuccess) {
          return ListView(
            children: [header(), title(), pokemonList(state.pokemons)],
          );
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
