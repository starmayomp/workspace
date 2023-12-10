import 'package:flutter/material.dart';
import 'screens/home_material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define ThemeData outside the build method
    // final ThemeData customTheme = ThemeData(
    //   primaryColor: Colors.blue, // Set primary color
    //   colorScheme: ColorScheme.fromSwatch()
    //       .copyWith(secondary: Colors.green), // Set color scheme
    //   // Add more properties as needed
    // );

    return const MaterialApp(
      home: HomeMaterial(),
      title: 'Form Demo',
      debugShowCheckedModeBanner: false,
      // theme: customTheme, // Apply the custom theme to MaterialApp
    );
  }
}
