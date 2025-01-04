import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_arc_text/flutter_arc_text.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:wietcorb_task/Core/Utiles/appAssets.dart';
import 'package:wietcorb_task/Core/Utiles/catsApi.dart';
import 'package:wietcorb_task/Core/Utiles/hextoColor.dart';
import 'dart:math';

import 'package:wietcorb_task/Features/Chart/Data/ChartModel.dart';
import 'package:wietcorb_task/Features/Chart/Presentation/Widgets/arcImage.dart';
import 'package:wietcorb_task/Features/Chart/Presentation/Widgets/arcText.dart';
import 'package:wietcorb_task/Features/Chart/Presentation/Widgets/chartCenterW.dart';
import 'package:wietcorb_task/Features/Chart/Presentation/Widgets/pieChartContent.dart';

class Chartviewbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: MediaQuery.sizeOf(context).height / 2 - 79,
      child: FutureBuilder<List<ChartModel>>(
          future: AppServices().getCharts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ChartModel> data = snapshot.data!;
              return Stack(
                alignment: Alignment.center,
                children: [
                  PieChartContent(data: data),
                  Arctext(
                      angle: 0.4,
                      direction: Direction.clockwise,
                      radius: 80,
                      title: '${data[0].minPoint}-${data[0].maxPoint}',
                      b: 120,
                      t: 20,
                      l: 0,
                      r: 90,
                      color: Colors.black),
                  Arctext(
                    angle: 0.2,
                    direction: Direction.clockwise,
                    radius: 60,
                    title: data[0].tierName,
                    b: 90,
                    t: 20,
                    l: 10,
                    r: 50,
                    color: helper.hexToColor(data[0].fontColor),
                  ),
                  Arctext(
                      angle: -0.2,
                      direction: Direction.counterClockwise,
                      radius: 90,
                      title: '${data[1].minPoint}-${data[1].maxPoint}',
                      b: 0,
                      t: 60,
                      l: 0,
                      r: 100,
                      color: Colors.black),
                  Arctext(
                      angle: -0.2,
                      direction: Direction.counterClockwise,
                      radius: 50,
                      title: data[1].tierName,
                      b: 0,
                      t: 80,
                      l: 0,
                      r: 70,
                      color: helper.hexToColor(data[1].fontColor)),
                  Arctext(
                      angle: -1.77,
                      direction: Direction.counterClockwise,
                      radius: 80,
                      title: '${data[1].minPoint}-${data[1].maxPoint}',
                      b: 0,
                      t: 80,
                      l: 100,
                      r: 0,
                      color: Colors.black),
                  Arctext(
                      angle: -1.75,
                      direction: Direction.counterClockwise,
                      radius: 80,
                      title: data[2].tierName,
                      b: 0,
                      t: 20,
                      l: 40,
                      r: 0,
                      color: helper.hexToColor(data[2].fontColor)),
                  Arctext(
                      angle: 1.6,
                      direction: Direction.clockwise,
                      radius: 110,
                      title: '${data[3].minPoint}-${data[3].maxPoint}',
                      b: 50,
                      t: 0,
                      l: 100,
                      r: 50,
                      color: Colors.black),
                  Arctext(
                      angle: 1.8,
                      direction: Direction.clockwise,
                      radius: 73,
                      title: data[3].tierName,
                      b: 50,
                      t: 0,
                      l: 30,
                      r: 0,
                      color: helper.hexToColor(data[3].fontColor)),
                  const Chartcenterw(),
                  const Positioned(
                    right: 20,
                    bottom: 90,
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Arcimage(angle: 15.7)),
                  ),
                ],
              );
            } else {
              return Center(
                child: LoadingAnimationWidget.threeRotatingDots(
                  color: Colors.blue,
                  size: 100,
                ),
              );
            }
          }),
    );
  }
}
