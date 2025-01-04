import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:wietcorb_task/Core/Utiles/hextoColor.dart';
import 'package:wietcorb_task/Features/Chart/Data/ChartModel.dart';

class PieChartContent extends StatelessWidget {
  const PieChartContent({super.key, required this.data});
  final List<ChartModel> data;
  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
            value: 25,
            color: helper.hexToColor(data[0].bgColor),
            title: '',
            radius: 50,
          ),
          PieChartSectionData(
            value: 25,
            color: helper.hexToColor(data[1].bgColor),
            title: '',
            radius: 50,
          ),
          PieChartSectionData(
            value: 25,
            color: helper.hexToColor(data[2].bgColor),
            title: '',
            radius: 50,
          ),
          PieChartSectionData(
            value: 25,
            color: helper.hexToColor(data[3].bgColor),
            title: '',
            radius: 50,
          ),
        ],
        sectionsSpace: 2,
        centerSpaceRadius: 90,
      ),
    );
  }
}
