import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../resources/resources.dart';

final List<PieChartSectionData> pieChartData = [
  PieChartSectionData(
    color: AppColor.primaryColor,
    value: 12,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: Colors.indigo,
    value: 25,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: Colors.lime,
    value: 34,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: Colors.pink,
    value: 14,
    showTitle: false,
    radius: 25,
  ),
];

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(children: [
        PieChart(
          PieChartData(
            sectionsSpace: 0,
            centerSpaceRadius: 70,
            startDegreeOffset: -90,
            sections: pieChartData,
          ),
        ),
        Positioned.fill(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: AppConst.defaultPadding,
            ),
            Text(
              '29.1',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  height: 0.5),
            ),
            const Text('of 128GB')
          ],
        ))
      ]),
    );
  }
}
