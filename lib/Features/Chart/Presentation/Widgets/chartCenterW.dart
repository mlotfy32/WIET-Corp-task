import 'package:flutter/material.dart';
import 'package:wietcorb_task/Core/Utiles/Styles.dart';
import 'package:wietcorb_task/Core/Utiles/appStrings.dart';

class Chartcenterw extends StatelessWidget {
  const Chartcenterw({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 90),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            width: 100,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 2,
                offset: const Offset(4, 4), // Horizontal and vertical shadow
              ),
            ], borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Appstrings.eMERALD,
                  style: Styles.centerChart,
                ),
                Text(
                  Appstrings.TIER_LEVEL,
                  style: Styles.centerChart.copyWith(color: Colors.blueGrey),
                ),
              ],
            ),
          ),
          Text(
            Appstrings.numper,
            style: Styles.centerChart.copyWith(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            Appstrings.tiercr,
            style: Styles.centerChart.copyWith(color: Colors.black),
          ),
          Text(
            Appstrings.tO,
            style: Styles.centerChart.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
