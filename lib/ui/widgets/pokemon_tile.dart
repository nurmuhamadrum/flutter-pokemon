import 'package:flutter/material.dart';
import 'package:pokemon/shared/theme.dart';
import 'package:pokemon/ui/pages/detail_page.dart';
import 'package:pokemon/models/pokemon_model.dart';

class PokemonTile extends StatelessWidget {
  final PokemonModel pokemons;

  // String? name;

  const PokemonTile(
    this.pokemons, {
    Key? key,
  }) : super(key: key);

  // const PokemonTile({Key? key, this.pokemons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                'assets/icon_pokeball.png',
              ))),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pokemons.name.toString(),
                    // 'Testing',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Catch me if you can!',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
