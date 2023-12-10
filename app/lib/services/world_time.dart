import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // Location name for the UI
  late String time; // Time in that location
  String flag; // URL to an asset flag icon
  String url; // Location URL for API endpoint
  bool isDaytime; //true or false if dat time or not

  WorldTime(
      {required this.location,
      required this.flag,
      required this.url,
      required this.isDaytime});

  Future<void> getTime() async {
    try {
      // Make the request
      http.Response response = await http
          .get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map<String, dynamic> data = jsonDecode(response.body);
      // print(data);
      // Get properties from data
      String datetime = data["datetime"];
      String offset = data["utc_offset"].substring(1, 3);
      // print(datetime);
      // print(offset);

      // Create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      // Set the time property
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print("caught error $e");
      time = "could not get time data";
    }
  }
}

void main() async {
  WorldTime instance = WorldTime(
      location: "Berlin",
      flag: "germany.png",
      url: "Europe/Berlin",
      isDaytime: true);
  await instance.getTime();
  print(
      instance.time); // Assuming you want to print the time after retrieving it
}
