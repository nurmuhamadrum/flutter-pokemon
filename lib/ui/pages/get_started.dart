import 'package:flutter/material.dart';
import 'package:pokemon/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_snorlax.png'))),
            ),
            Text(
              'Who\'s that Pokemon!',
              style:
                  whiteTextStyle.copyWith(fontSize: 28, fontWeight: semiBold),
            ),
            SizedBox(height: 10),
            Text(
              'with this app you can find your first pokemon \n let\'s find your first pokemon!',
              style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: light),
              textAlign: TextAlign.center,
            ),
            CustomButton(
              title: 'Get Started', 
              width: 220,
              margin: EdgeInsets.only(
                top: 50,
                bottom: 80
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/main');
              }
            )
          ],
        ),
      ),
    );
  }
}
