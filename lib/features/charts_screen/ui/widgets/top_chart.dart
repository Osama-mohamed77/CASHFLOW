import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:cashflow/constants/my_colors.dart';

class TopChart extends StatelessWidget {
  final double income;
  final double expenses;
  final double debts;
  final double assets;

  const TopChart({
    required this.income,
    required this.expenses,
    required this.debts,
    required this.assets,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBorderColor: Colors.white,
      plotAreaBorderWidth: 0,
      title: const ChartTitle(
        text: 'تابع تدفقك النقدي',
        textStyle: TextStyle(color: Colors.white),
      ),
      primaryXAxis: const CategoryAxis(
        majorGridLines: MajorGridLines(width: 0),
        labelStyle: TextStyle(color: Colors.white),
      ),
      primaryYAxis: const NumericAxis(
        axisLine: AxisLine(width: 0),
        majorTickLines: MajorTickLines(size: 0),
        labelStyle: TextStyle(color: Colors.white),
      ),
      series: _getColumnSeries(),
    );
  }

  List<ColumnSeries<_ChartData, String>> _getColumnSeries() {
    final List<_ChartData> data = [
      _ChartData('الدخل', income, MyColors.myOrange),
      _ChartData('المصروفات', expenses, MyColors.myBlue),
      _ChartData('الديون', debts, MyColors.myGreen),
      _ChartData('العائد من الاصول', assets, MyColors.myRed),
    ];

    return <ColumnSeries<_ChartData, String>>[
      ColumnSeries<_ChartData, String>(
        dataSource: data,
        xValueMapper: (_ChartData data, _) => data.x,
        yValueMapper: (_ChartData data, _) => data.y,
        pointColorMapper: (_ChartData data, _) => data.color,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.r), topRight: Radius.circular(10.r)),
        width: 0.6,
      ),
    ];
  }
}

class _ChartData {
  final String x;
  final double y;
  final Color color;

  _ChartData(this.x, this.y, this.color);
}
