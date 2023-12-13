import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_app/Cubit/khotba_cubit.dart';
import 'package:muslim_app/Cubit/quran_cubit.dart';

import 'package:muslim_app/view/home_page.dart';

import 'view/custom_splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => QuranCubit(),
      ),
      BlocProvider(
        create: (context) => KhotbaCubit(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'Ruwudu',
          primaryColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        home: const CustomSplashScreen(
          splashImage: 'asset/imageicon/muslim.png',
          nextScreen: HomePage(),
        ));
  }
}
