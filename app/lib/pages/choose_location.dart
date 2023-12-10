import 'package:flutter/material.dart';
import 'package:app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(
        url: 'Europe/London',
        location: 'London',
        isDaytime: true,
        flag: 'uk.png'),
    WorldTime(
        url: 'Europe/Berlin',
        location: 'Athens',
        isDaytime: true,
        flag: 'greece.png'),
    WorldTime(
        url: 'Africa/Cairo',
        location: 'Cairo',
        isDaytime: true,
        flag: 'egypt.png'),
    WorldTime(
        url: 'Africa/Lagos',
        location: 'Lagos',
        isDaytime: true,
        flag: 'Nigeria.png'),
    WorldTime(
        url: 'Africa/Nairobi',
        location: 'Nairobi',
        isDaytime: true,
        flag: 'kenya.png'),
    WorldTime(
        url: 'America/Chicago',
        location: 'Chicago',
        isDaytime: true,
        flag: 'usa.png'),
    WorldTime(
        url: 'America/New_York',
        location: 'New York',
        isDaytime: true,
        flag: 'usa.png'),
    WorldTime(
        url: 'Asia/Seoul',
        location: 'Seoul',
        isDaytime: true,
        flag: 'south_korea.png'),
    WorldTime(
        url: 'Asia/Jakarta',
        location: 'Jakarta',
        isDaytime: true,
        flag: 'indonesia.png'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    //nagivate to homescreen
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytim': instance.isDaytime
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text("Choose a Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
