import 'package:flutter/material.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/choose_location.dart';
import 'package:app/pages/loading.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const ChooseLocation(),
      },
    );
  }
}
