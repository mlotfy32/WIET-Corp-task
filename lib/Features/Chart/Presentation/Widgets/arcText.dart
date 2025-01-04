import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_arc_text/flutter_arc_text.dart';

class Arctext extends StatelessWidget {
  const Arctext(
      {super.key,
      required this.title,
      required this.b,
      required this.t,
      required this.l,
      required this.r,
      required this.color,
      required this.radius,
      required this.direction,
      required this.angle});
  final String title;
  final double b;
  final double t;
  final double l;
  final double r;
  final double radius;
  final double angle;
  final Direction direction;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: b,
      left: l,
      right: r,
      top: t,
      child: Transform.rotate(
        angle: angle,
        child: ArcText(
            radius: radius,
            text: title,
            textStyle: TextStyle(
                fontSize: 22, color: color, fontWeight: FontWeight.w500),
            startAngle: -pi / 2,
            startAngleAlignment: StartAngleAlignment.start,
            placement: Placement.outside,
            direction: direction),
      ),
    );
  }
}
