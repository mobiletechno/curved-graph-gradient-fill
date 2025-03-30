import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graph_curved_gradient_fill/chart_widget.dart';
import 'package:graph_curved_gradient_fill/graph_curved_gradient_fill.dart';

void main() {
  testWidgets('Test UI component renders correctly', (WidgetTester tester) async {
    // 1. Build our widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GraphChart(
            width: 300,
            height: 200,
            stroke: 2.0,
            yValues: [{'Jan': 10}, {'Feb': 20}, {'Mar': 15}],
            xValues: [{'2023': 5}, {'2024': 10}, {'2025': 7}],
            backgroundChartGradientOne: Colors.blue,
            backgroundChartGradientTwo: Colors.white,
            graphGradientOne: Colors.green,
            graphGradientTwo: Colors.white,
            colorGraphLine: Colors.red,
          ), // Your widget from the package
        ),
      ),
    );

    // 2. Verify the widget appears
    expect(find.byType(GraphChart), findsOneWidget); // FIXED

    // 3. Test interactions if needed
    await tester.pump(); // Rebuild after state change

    // // 4. Verify changes
    // expect(find.text('Expected text after tap'), findsOneWidget);
  });
}