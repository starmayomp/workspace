import 'package:flutter/material.dart';
import 'package:flutterpractice/screens/bluetoothapp.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BluetoothApp(),
    );
  }
}
