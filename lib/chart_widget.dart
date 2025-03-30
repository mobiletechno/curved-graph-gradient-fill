import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'graph_curved_gradient_fill.dart';
class GraphChart extends StatelessWidget{
  final double width;
  final double height;
  final double stroke;
  final List<Map<String,double>> yValues;
  final List<Map<String,double>> xValues;
  final Color backgroundChartGradientOne;
  final Color backgroundChartGradientTwo;
  final Color graphGradientOne;
  final Color graphGradientTwo;
  final Color colorGraphLine;
  GraphChart({required this.width,required this.height,required this.stroke,required this.yValues,required this.xValues,required this.backgroundChartGradientOne,required this.backgroundChartGradientTwo,required this.graphGradientOne,required this.graphGradientTwo,required this.colorGraphLine});
  @override
  Widget build(BuildContext context) {
  return
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            backgroundChartGradientOne,
            backgroundChartGradientTwo,
          ],
        ),
      ),
      width: width,
      height: height,
      child: CustomPaint(
        painter: CurvedChartPainter(
          color: colorGraphLine, // Set the color of the chart line
          yValues: yValues, // Pass the Y axis values
          strokeWidth: stroke, // Set the stroke width
          xValues: xValues, // Pass the X axis values
          gradientColors: [
            // Define the gradient colors for the chart fill
            graphGradientOne,
            graphGradientTwo,
          ],

        ),
      ),
    );
  }
}