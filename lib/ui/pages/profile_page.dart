import 'package:flutter/material.dart';
import 'package:pokemon/ui/widgets/custom_bottom_navigation_item.dart';
// import 'package:pokemon/ui/widgets/pokemon_tile.dart';
import '../../shared/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  Widget pokemonList() {
    return Container(
      margin: EdgeInsets.only(
          top: 30, left: defaultMargin, right: defaultMargin, bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Pokemon',
            style: blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
          ),
          // PokemonTile(
          //   name: 'Bulbasaur',
          // )
        ],
      ),
    );
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

    return ListView(
      children: [header(), pokemonList()],
    );
  }
}
