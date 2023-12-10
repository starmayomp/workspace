import 'package:flutter/material.dart';
import '../../models/location.dart';
import '../../widgets/location_tile.dart';

class TileOverlay extends StatelessWidget {
  final Location location;

  const TileOverlay(this.location, {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
            child: LocationTile(
              location: location,
              darkTheme: true,
            ),
          ),
        ),
      ],
    );
  }
}
