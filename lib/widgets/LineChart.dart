import 'package:flutter/material.dart';
import 'package:managment/models/modelGraph.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChartWithZoomAndInteractivity extends StatefulWidget {
  final List<SalesData> salesData;

  const LineChartWithZoomAndInteractivity({Key? key, required this.salesData})
      : super(key: key);

  @override
  _LineChartWithZoomAndInteractivityState createState() =>
      _LineChartWithZoomAndInteractivityState();
}

class _LineChartWithZoomAndInteractivityState
    extends State<LineChartWithZoomAndInteractivity> {
  List<CartesianSeries<SalesData, String>> getChartSeries() {
    return [
      SplineSeries<SalesData, String>(
        color: const Color(0xFF3C7867),
        dataSource: widget.salesData,
        xValueMapper: (SalesData sales, _) => sales.year,
        yValueMapper: (SalesData sales, _) => sales.sales,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 500,
          width: screenWidth * 0.9,
          child: SfCartesianChart(
            plotAreaBackgroundColor: const Color(0xFFE5EDEA),
            zoomPanBehavior: ZoomPanBehavior(
              enablePinching: true,
              enablePanning: true,
              enableDoubleTapZooming: true,
            ),
            tooltipBehavior: TooltipBehavior(
              enable: true,
              header: 'Sales',
            ),
            trackballBehavior: TrackballBehavior(
              enable: true,
              tooltipSettings: const InteractiveTooltip(
                enable: true,
              ),
              markerSettings: const TrackballMarkerSettings(
                shape: DataMarkerType.circle,
                width: 8,
                height: 8,
              ),
            ),
            primaryXAxis: CategoryAxis(
                labelStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 9)),
            primaryYAxis: NumericAxis(
              labelStyle: const TextStyle(
                  fontSize: 9,
                  fontWeight:
                      FontWeight.bold), // Set the font size for the y-axis
            ),
            series: getChartSeries(),
          ),
        ),
      ),
    );
  }
}
