import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(
    this.id,
    this.name,
    this.imagePath,
    this.facts,
  );

  static List<Location> fetchAll() {
    return [
      Location(1, 'Lag', 'assets/images/beach.jpg', [
        LocationFact('About',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic'),
        LocationFact(
          'About',
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic',
        ),
      ]),
      Location(2, 'Olumo', 'assets/images/beach.jpg', [
        LocationFact('Summary',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic')
      ]),
      Location(3, 'Erinjesa', 'assets/images/beach.jpg', [
        LocationFact('Ikogusi',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic')
      ]),
    ];
  }

  static Location? fetchByID(int locationID) {
    /* fetch all locations, iterate them and when we 
    find the location with the ID we want, 
    return it immediately*/
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
