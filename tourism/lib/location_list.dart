import 'dart:async';
import 'package:flutter/material.dart';
import '../components/location_tile.dart';
import '../components/banner_image.dart';
import '../components/default_app_bar.dart';
import '../models/location.dart';
import '../screens/location_detail.dart';
import '../style.dart';

const ListItemHeight = 245.0;

class LocationList extends StatefulWidget {
  const LocationList({super.key});

  @override
  createState() => _LocationListState();
}

class _LocationListState extends State<LocationList> {
  List<Location> locations = [];
  bool loading = false;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: RefreshIndicator(
        onRefresh: loadData,
        child: Column(
          children: [
            renderProgressBar(context),
            Expanded(
              child: renderListView(context),
            )
          ],
        ),
      ),
    );
  }

  Future<void> loadData() async {
    if (mounted) {
      setState(() => loading = true);
      Timer(const Duration(seconds: 3), () async {
        final locations = Location.fetchAll();
        setState(() {
          this.locations = locations;
          loading = false;
        });
      });
    }
  }

  Widget renderProgressBar(BuildContext context) {
    return (loading
        ? const LinearProgressIndicator(
            value: null,
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.grey))
        : Container());
  }

  Widget renderListView(BuildContext context) {
    return ListView.builder(
      itemCount: locations.length,
      itemBuilder: _listViewItemBuilder,
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    final location = locations[index];
    return GestureDetector(
        onTap: () => _navigateToLocationDetail(context, location.id),
        child: SizedBox(
          height: ListItemHeight,
          child: Stack(children: [
            BannerImage(url: location.url, height: ListItemHeight),
            _tileFooter(location),
          ]),
        ));
  }

  void _navigateToLocationDetail(BuildContext context, int locationID) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => LocationDetail(locationID)));
  }

  Widget _tileFooter(Location location) {
    final info = LocationTile(location: location, darkTheme: true);
    final overlay = Container(
      padding: const EdgeInsets.symmetric(
          vertical: 5.0, horizontal: Styles.horizontalPaddingDefault),
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
      child: info,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [overlay],
    );
  }
}
