import 'package:flutter/material.dart';
import 'package:naijaadventure/widgets/location_tile.dart';
import '../../widgets/image_banner.dart';
import '../location_detail/text_section.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  const LocationDetail(this._locationID, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchByID(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(location!.name),
        elevation: 20,
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.place_rounded),
          ),
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ImageBanner(assetPath: location.imagePath),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),
              child: LocationTile(
                location: location,
                darkTheme: true,
              ),
            ),
            ...textSections(location),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
    );
  }

  List<Widget> textSections(Location location) {
    final List<Widget> sections = [];
    for (var fact in location.facts) {
      sections.add(TextSection(fact.title, fact.text));
    }
    return sections;
  }
}
