import 'package:dana_app_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dana_app_clone/utils/asset_locations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        elevation: 0,
        titleSpacing: 0,
        title: const AppBarTitle(),
        actions: [
          Image(
            image: AssetLocations.iconLocation('message'),
            width: 30,
          ),
          const SizedBox(width: 16)
        ],
      ),
    );
  }
}
