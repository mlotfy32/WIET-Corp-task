import 'package:flutter/material.dart';
import 'package:wietcorb_task/Core/Utiles/appAssets.dart';

class Arcimage extends StatelessWidget {
  const Arcimage({super.key, required this.angle});
  final double angle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 80,
      child: Transform.rotate(
        angle: angle,
        child: Image.asset(
          fit: BoxFit.fitWidth,
          AppAssets.image,
        ),
      ),
    );
  }
}
