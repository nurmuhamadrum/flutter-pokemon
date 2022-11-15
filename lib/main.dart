import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/cubit/page_cubit.dart';
import 'package:pokemon/cubit/pokemon_cubit.dart';
import 'package:pokemon/ui/pages/main_page.dart';
import 'ui/pages/splash_page.dart';
import 'ui/pages/get_started.dart';
import 'ui/pages/main_page.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageCubit()),
        BlocProvider(create: (context) => PokemonCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/main': (context) => MainPage()
        },
      ),
    );
  }
}