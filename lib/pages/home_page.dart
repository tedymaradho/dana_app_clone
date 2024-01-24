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
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            height: 410,
            child: Stack(
              children: [
                Container(
                  color: Colors.orange,
                  height: 180,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconSubtitleHeader(
                        iconName: 'scan',
                        iconSubtitle: 'Scan',
                      ),
                      IconSubtitleHeader(
                        iconName: 'top_up',
                        iconSubtitle: 'Top up',
                      ),
                      IconSubtitleHeader(
                        iconName: 'send',
                        iconSubtitle: 'Send',
                      ),
                      IconSubtitleHeader(
                        iconName: 'request',
                        iconSubtitle: 'Request',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IconSubtitleHeader extends StatelessWidget {
  const IconSubtitleHeader({
    super.key,
    required this.iconName,
    required this.iconSubtitle,
  });

  final String iconName;
  final String iconSubtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetLocations.iconLocation(iconName),
          width: 40,
        ),
        const SizedBox(height: 5),
        Text(
          iconSubtitle,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
