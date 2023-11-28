import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class graphes extends StatefulWidget {
  const graphes({super.key});

  @override
  State<graphes> createState() => _graphesState();
}

class _graphesState extends State<graphes> {
  late List<GBData> _chartData;
  late List<POURC> _chartDatas;

  @override
  void initState() {
    _chartData = getchartData();
    _chartDatas = getchartDatas();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Graphes"),
      ),
      body: ListView(
        children: <Widget>[
          SfCircularChart(
            title: ChartTitle(text: "Population par regions"),
            legend: Legend(
                isVisible: true, overflowMode: LegendItemOverflowMode.scroll),
            series: <CircularSeries>[
              PieSeries<GBData, String>(
                  dataSource: _chartData,
                  xValueMapper: (GBData data, _) => data.continent,
                  yValueMapper: (GBData data, _) => data.gdp,
                  dataLabelSettings: DataLabelSettings(
                    isVisible: true,
                  )),
            ],
          ),
          ////////////
          SfCircularChart(
            title: ChartTitle(text: "population par regions en pourcentage"),
            legend: Legend(
                isVisible: true, overflowMode: LegendItemOverflowMode.scroll),
            series: <CircularSeries>[
              PieSeries<POURC, String>(
                  dataSource: _chartDatas,
                  xValueMapper: (POURC data, _) => data.regions,
                  yValueMapper: (POURC data, _) => data.val,
                  dataLabelSettings: DataLabelSettings(isVisible: true))
            ],
          ),
          /////////////
          SfCircularChart(
            series: <CircularSeries>[
              PieSeries<GBData, String>(
                  dataSource: _chartData,
                  xValueMapper: (GBData data, _) => data.continent,
                  yValueMapper: (GBData data, _) => data.gdp)
            ],
          ),
          ////////////
        ],
      ),
    );
  }

  List<GBData> getchartData() {
    final List<GBData> chartData = [
      GBData('Dakar', 3732282),
      GBData('Diourbel', 1801999),
      GBData('Fatick', 870361),
      GBData('Kaffirne', 703560),
      GBData('Kaolack', 1155433),
      GBData('Kédougou', 184276),
      GBData('Kolda', 796581),
      GBData('Louga', 1032644),
      GBData('Matam', 706042),
      GBData('Saint-Louis', 1063539),
      GBData('Sédhiou', 553006),
      GBData('Tambacounda', 841512),
      GBData('Thiès', 2105711),
      GBData('Ziguinchor', 662179),
    ];
    return chartData;
  }

  List<POURC> getchartDatas() {
    final List<POURC> chartDatas = [
      POURC('Dakar', 23),
      POURC('Diourbel', 12),
      POURC('Fatick', 11),
      POURC('Kaffirne', 7),
      POURC('Kaolack', 6),
      POURC('Kédougou', 6),
      POURC('Kolda', 5),
      POURC('Louga', 5),
      POURC('Matam', 4),
      POURC('Saint-Louis', 4),
      POURC('Sédhiou', 4),
      POURC('Tambacounda', 4),
      POURC('Thiès', 3),
      POURC('Ziguinchor', 1),
    ];
    return chartDatas;
  }
}

class GBData {
  GBData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}

class POURC {
  POURC(this.regions, this.val);
  final String regions;
  final int val;
}
