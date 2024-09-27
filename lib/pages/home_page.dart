import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 12,
          centerTitle: true,
          title: const Text("D A S H B O A R D ",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, right: 50, left: 50),
              child: Text(
                "Chiller Load & Efficiency",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 200,
              width: 500,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).cardColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: Container(
                          height: 200,
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).dividerColor),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "Load %",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: PieChart(
                                    legendOptions: const LegendOptions(
                                      showLegendsInRow: true,
                                      legendPosition: LegendPosition.top,
                                      showLegends: false,
                                      legendTextStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    dataMap: const {"Chiller Load": 50},
                                    chartType: ChartType.ring,
                                    baseChartColor: Colors.grey,
                                    colorList: const [Colors.greenAccent],
                                    chartValuesOptions:
                                        const ChartValuesOptions(
                                            showChartValuesInPercentage: true,
                                            chartValueStyle: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black)),
                                    totalValue: 100,
                                    chartRadius:
                                        MediaQuery.of(context).size.width / 3,
                                  ),
                                ),
                              ),
                            ],
                          ))),
                  Expanded(
                    child: Container(
                        height: 200,
                        margin: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).dividerColor),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Efficiency %",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: PieChart(
                                  legendOptions: const LegendOptions(
                                    showLegendsInRow: true,
                                    legendPosition: LegendPosition.top,
                                    showLegends: false,
                                    legendTextStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  dataMap: const {"Efficiency": 75},
                                  chartType: ChartType.ring,
                                  baseChartColor: Colors.grey,
                                  colorList: const [Colors.blueAccent],
                                  chartValuesOptions: const ChartValuesOptions(
                                      showChartValuesInPercentage: true,
                                      chartValueStyle: TextStyle(
                                          fontSize: 14, color: Colors.black)),
                                  totalValue: 100,
                                  chartRadius:
                                      MediaQuery.of(context).size.width / 3,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, right: 50, left: 50),
              child: Text(
                "Weather & Humidity",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 100,
              width: 500,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).cardColor),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Graphs & Analytics",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ));
  }
}
