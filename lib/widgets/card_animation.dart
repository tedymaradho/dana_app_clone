import 'package:dana_app_clone/utils/asset_locations.dart';
import 'package:flutter/material.dart';

class CardAnimation extends StatefulWidget {
  const CardAnimation({
    super.key,
  });

  @override
  State<CardAnimation> createState() => _CardAnimationState();
}

class _CardAnimationState extends State<CardAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _positionAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _positionAnimation = AlignmentTween(
            begin: Alignment.bottomCenter, end: Alignment.topCenter)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));

    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      }
      if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _positionAnimation,
        builder: (context, child) {
          return Stack(
            children: [
              Align(
                alignment: _positionAnimation.value,
                child: Image(
                  image: AssetLocations.iconLocation('card'),
                  width: 28,
                ),
              ),
            ],
          );
        });
  }
}
