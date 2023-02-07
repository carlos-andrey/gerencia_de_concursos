import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  late List<GDPData> _chartData;
  late List<SalesData> _chartData1;
  late TrackballBehavior _trackballBehavior;

  @override
  void initState() {
    _trackballBehavior = TrackballBehavior(
      enable: true,
      
    );
    _chartData = getChartsdata();
    _chartData1 = getChartsdata1();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 275,
            child: SfCircularChart(
              title: ChartTitle(
                text: 'Dados aleatorios sobre continentes',
              ),
              legend: Legend(
                isVisible: true,
                overflowMode: LegendItemOverflowMode.wrap
              ),
              series: <CircularSeries>[
                PieSeries<GDPData, String>(
                  dataSource: _chartData,
                  xValueMapper: (GDPData data, _) => data.continent,
                  yValueMapper: (GDPData data, _) => data.gdp,
                  dataLabelSettings: DataLabelSettings(isVisible: true)
                )
              ],
            ),
          ),
          Container(
            height: 275,
            child: SfCartesianChart(
              title: ChartTitle(text: 'dados de vendas'),
              legend: Legend(isVisible: true),
              series: <ChartSeries>[
                LineSeries<SalesData, double>(
                  name: 'Sales',
                  dataSource: _chartData1, 
                  xValueMapper: (SalesData sales, _) => sales.year,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                  enableTooltip: true,
                  //dataLabelMapper: DataLabelSettings(isVisible: true)
                )
              ],
              primaryXAxis: NumericAxis(edgeLabelPlacement: EdgeLabelPlacement.shift,),
              primaryYAxis: NumericAxis(numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0)),
              
            ),
          )
        ],
      ),
    );
  }
  List<GDPData> getChartsdata(){
    final List<GDPData> chartData = [
      GDPData('Oceania', 1600),
      GDPData('África', 2490),
      GDPData('S America', 2900),
      GDPData('Europa', 1600),
      GDPData('N America', 24880),
      GDPData('Asia', 34390),
    ];
    return chartData;
  }
  List<SalesData> getChartsdata1(){
    final List<SalesData> chartData = [
      SalesData(2013, 15),
      SalesData(2014, 5),
      SalesData(2015, 20),
      SalesData(2016, 10),
      SalesData(2017, 25),
      SalesData(2018, 15),
      SalesData(2019, 30),
      SalesData(2020, 20),
      SalesData(2021, 35),
    ];
    return chartData;
  }
}


class GDPData{
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}

class SalesData{
  SalesData(this.year, this.sales);
  final double year;
  final double sales;
}