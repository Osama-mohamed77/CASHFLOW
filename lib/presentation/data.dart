import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cashflow/core/constants/my_colors.dart';
import 'package:cashflow/providers/money_provider.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// Define the ChartSampleData class
class ChartSampleData {
  final String x;
  final double y;

  ChartSampleData({required this.x, required this.y});
}

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  TooltipBehavior? _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(
        enable: true,
        header: '',
        textStyle: const TextStyle(color: Colors.white),
        canShowMarker: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myBackground,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 30.h),
            child: Consumer<MoneyProvider>(
              builder: (context, value, child) {
                return Container(
                  height: 400.h,
                  color: MyColors.myBackground, // Set the background color
                  child: _buildDefaultColumnChart(
                      income: value.income,
                      expenses: value.expenses,
                      debts: value.debts,
                      assets: value.assets),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 30.h),
            child: Consumer<MoneyProvider>(
              builder: (context, value, child) {
                return Container(
                  height: 400.h,
                  color: MyColors.myBackground, // Set the background color
                  child: _buildDefaultColumnChart(
                      income: value.income,
                      expenses: value.expenses,
                      debts: value.debts,
                      assets: value.assets),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  SfCartesianChart _buildDefaultColumnChart({
    required double income,
    required double expenses,
    required double debts,
    required double assets,
  }) {
    return SfCartesianChart(
      plotAreaBorderColor: Colors.white,
      plotAreaBorderWidth: 0,
      title: const ChartTitle(
        text: 'Population growth of various countries',
        textStyle: TextStyle(color: Colors.white),
      ),
      primaryXAxis: CategoryAxis(
        majorGridLines: const MajorGridLines(width: 0),
        labelStyle: TextStyle(color: Colors.white, fontSize: 12.sp),
      ),
      primaryYAxis: NumericAxis(
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        labelStyle: TextStyle(color: Colors.white, fontSize: 12.sp),
      ),
      series: _getDefaultColumnSeries(
          income: income, expenses: expenses, debts: debts, assets: assets),
      tooltipBehavior: _tooltipBehavior,
    );
  }

  List<ColumnSeries<ChartSampleData, String>> _getDefaultColumnSeries({
    required double income,
    required double expenses,
    required double debts,
    required double assets,
  }) {
    return <ColumnSeries<ChartSampleData, String>>[
      ColumnSeries<ChartSampleData, String>(
        dataSource: <ChartSampleData>[
          ChartSampleData(x: 'الدخل', y: income),
          ChartSampleData(x: 'المصروفات', y: expenses),
          ChartSampleData(x: 'الديون', y: debts),
          ChartSampleData(x: 'العائد من الاصول', y: assets),
        ],
        xValueMapper: (ChartSampleData sales, _) => sales.x,
        yValueMapper: (ChartSampleData sales, _) => sales.y,
        pointColorMapper: (ChartSampleData sales, _) {
          // تعيين الألوان حسب قيمة `x`
          switch (sales.x) {
            case 'الدخل':
              return MyColors.myOrange;
            case 'المصروفات':
              return MyColors.myBlue;
            case 'الديون':
              return MyColors.myGreen;
            case 'العائد من الاصول':
              return MyColors.myRed;
            default:
              return Colors.grey; // لون افتراضي
          }
        },
        width: 0.5, // تعيين عرض الأعمدة
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.r), topRight: Radius.circular(10.r)),
        dataLabelSettings: DataLabelSettings(
          isVisible: true,
          textStyle: TextStyle(fontSize: 13.sp, color: Colors.white),
        ),
      ),
    ];
  }
}
