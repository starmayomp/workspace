import 'package:flutter/material.dart';

class BluetoothApp extends StatefulWidget {
  const BluetoothApp({Key? key}) : super(key: key);

  @override
  _BluetoothAppState createState() => _BluetoothAppState();
}

class _BluetoothAppState extends State<BluetoothApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('IoT'),
          centerTitle: true,
          elevation: 50,
        ),
        body: Container());
  }
}
