import 'package:fitness_tracker/utils/colors.dart';
import 'package:fitness_tracker/utils/text_style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomTrackerChart extends StatelessWidget {
  const CustomTrackerChart({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> summery = [
      {
        'value': 80.0,
        'index': 0,
      },
      {
        'value': 70.0,
        'index': 1,
      },
      {
        'value': 40.0,
        'index': 2,
      },
      {
        'value': 64.0,
        'index': 3,
      },
      {
        'value': 55.0,
        'index': 4,
      },
      {
        'value': 60.0,
        'index': 5,
      },
      {
        'value': 45.0,
        'index': 6,
      },
    ];
    return SizedBox(
      height: 200,
      child: BarChart(

          BarChartData(
          maxY: 100,
          minY: 0,
          gridData: const FlGridData(show: false),
          titlesData: FlTitlesData(
            topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        switch (value.toInt()) {
                          case 0:
                            return headingThree(data: '');
                          case 1:
                            return headingThree(data: 'S');
                          case 2:
                            return headingThree(data: 'M');
                          case 3:
                            return headingThree(data: 'T');
                          case 4:
                            return headingThree(data: 'W');
                          case 5:
                            return headingThree(data: 'T');
                          case 6:
                            return headingThree(data: 'F');
                          case 7:
                            return headingThree(data: 'S');

                          default:
                            return const Text('');
                        }
                      })),
          ),
          barGroups: summery
              .map(
                (element) => BarChartGroupData(
                    x: element['index'] + 1,
                    barRods: [
                      BarChartRodData(
                      toY: element['value'],
                        color: AppColors.primaryColor,
                        width: 42,
                        borderRadius: BorderRadius.circular(7),
                        backDrawRodData: BackgroundBarChartRodData(
                          color: AppColors.secondaryColor,
                          show: true,
                          toY: 100
                        )
                    )]),
              )
              .toList())),
    );
  }
}
