import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';
import '../../widgets/image_banner.dart';
import '../../screens/locations/tile_overlay.dart';

class Locations extends StatelessWidget {
  const Locations({super.key});

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    return Scaffold(
      appBar: AppBar(
        elevation: 30,
        title: const Text('Locations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (content, index) =>
              _itemBuilder(context, locations[index]),
        ),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {'id': locationID});
  }

  Widget _itemBuilder(BuildContext context, Location location) {
    return GestureDetector(
      onTap: () => _onLocationTap(context, location.id),
      child: SizedBox(
        height: 245.0,
        child: Stack(
          children: [
            ImageBanner(
              assetPath: location.imagePath,
              height: 245.0,
            ),
            TileOverlay(location),
          ],
        ),
      ),
    );
  }
}
