import 'package:flutter/material.dart';
import '../models/location.dart';
import '../style.dart';

const LocationTileHeight = 100.0;

class LocationTile extends StatelessWidget {
  final Location location;
  final bool darkTheme;

  const LocationTile({
    Key? key,
    required this.location,
    required this.darkTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textColor = darkTheme ? TextColorLight : TextColorDark;
    final title = location.name.toUpperCase();
    final subTitle = location.userItinerarySummary.toUpperCase();
    final caption = location.tourPackageName.toUpperCase();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: DefaultPaddingHorizontal),
      height: LocationTileHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: textColor), // Adjust the text style as per your theme
          ),
          Text(
            subTitle,
            style: Theme.of(context)
                .textTheme
                .titleMedium, // Adjust the text style as per your theme
          ),
          Text(
            caption,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: textColor), // Adjust the text style as per your theme
          )
        ],
      ),
    );
  }
}
