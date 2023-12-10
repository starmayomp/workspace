import 'package:flutter/material.dart';
import 'screens/location_detail/location_detail.dart';
import 'screens/locations/locations.dart';
import 'style.dart';

const LocationsRoutes = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      title: 'Naija Adventure',
      debugShowCheckedModeBanner: false,
      theme: _themeData(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic>? arguments =
          settings.arguments as Map<String, dynamic>?;
      Widget screen;
      switch (settings.name) {
        case LocationsRoutes:
          screen = const Locations();
          break;
        case LocationDetailRoute:
          final int? id = arguments?['id'] as int?;
          if (id != null) {
            screen = LocationDetail(id);
          } else {
            screen = const Locations();
          }
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _themeData() {
    return ThemeData(
      appBarTheme: const AppBarTheme(),
      primaryTextTheme: const TextTheme(titleLarge: AppBarTextStyle),
      textTheme: const TextTheme(
        titleMedium: TitleTextStyle,
        titleSmall: SubTitleTextStyle,
        bodySmall: CaptionTextStyle,
        bodyMedium: Body1TextStyle,
      ),
    );
  }
}
