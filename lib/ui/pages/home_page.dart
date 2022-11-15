import 'package:flutter/material.dart';
import 'package:pokemon/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:pokemon/ui/widgets/pokemon_tile.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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

    Widget pokemonList() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
        child: Column(
          children: [
            Text(
              'Pokemon List',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold
              ),
            ),
            PokemonTile(name: 'Bulbasaur',),
            PokemonTile(name: 'Venusaur',),
            PokemonTile(name: 'Charmander',),
            PokemonTile(name: 'Snorlax',),
          ],
        ),
      );
    }

    return ListView(
      children: [header(), pokemonList()],
    );
  }
}
