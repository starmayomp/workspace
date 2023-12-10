import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)!.settings.arguments as Map;

    // Null checks added for the data map and its keys
    String location = data['location'] ?? 'Location not found';
    String time = data['time'] ?? 'Time not available';

    // print(data);

    // Set background based on isDaytime key
    String bgImage = (data['isDaytime'] ?? true) ? 'day.png' : 'night.png';
    Color bgColor =
        (data['isDaytime'] ?? true) ? Colors.blue[500]! : Colors.blue[900]!;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/$bgImage'), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 0.0),
            child: Column(
              children: <Widget>[
                TextButton.icon(
                  onPressed: () async {
                    dynamic result =
                        await Navigator.pushNamed(context, '/location');
                    if (result != null) {
                      setState(() {
                        data = {
                          'time': result['time'],
                          'location': result['location'],
                          'isDaytime': result['isDaytime'],
                          'flag': result['flag'],
                        };
                      });
                    }
                  },
                  icon: const Icon(
                    Icons.edit_location,
                    color: Colors.white,
                  ),
                  label: const Text(
                    "Edit Location",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      location,
                      style: const TextStyle(
                          fontSize: 28.0,
                          letterSpacing: 2.0,
                          color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Text(
                  time,
                  style: const TextStyle(fontSize: 66.0, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
