import 'package:dana_app_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:dana_app_clone/utils/asset_locations.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          Image(
            image: AssetLocations.iconLocation('logo'),
            width: 28,
          ),
          const SizedBox(width: 8),
          Text(
            'Rp.',
            style: primaryTextTheme.bodyLarge,
          ),
          const SizedBox(width: 8),
          Text(
            '0',
            style: primaryTextTheme.bodyLarge,
          ),
          const SizedBox(width: 8),
          const SizedBox(
            height: 30,
            child: CardAnimation(),
          ),
        ],
      ),
    );
  }
}
