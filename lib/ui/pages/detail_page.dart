import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image_bulbasaur.jpg')
            )
        ),
      );
    }

    Widget customShadow() {
      return Container(
        height: 200,
        width: double.infinity,
        margin: EdgeInsets.only(top: 200),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ]
          )
        ),
      );
    }

    Widget content() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE: TITLE POKEMON
            Container(
              margin: EdgeInsets.only(top: 270, left: defaultMargin, right: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bulbasaur',
                    style: whiteTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold
                    ),
                  ),
                  Text(
                    'Pokemon',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light
                    ),
                  ),
                ],
              ),
            ),

            // NOTE: DESCRIPTION POKEMON
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20, left: defaultMargin, right: defaultMargin),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold
                    ),
                  ),
                  SizedBox(height: 6,),
                  Text(
                    'About the pokemon',
                    style: blackTextStyle.copyWith(
                      height: 2
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Ability',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold
                    ),
                  ),
                  SizedBox(height: 6,),
                  Text(
                    'Ability the pokemon',
                    style: blackTextStyle.copyWith(
                      height: 2
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          backgroundImage(),
          customShadow(),
          content(),
        ],
      ),
    );
  }
}