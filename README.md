<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

TODO: A Flutter package that displays a custom curved graph with a gradient-filled background. Use this package to easily render visually appealing charts in your Flutter applications.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

To use this package, add it to your pubspec.yaml:

## Usage

TODO: A Flutter package for drawing smooth, curved, gradient-filled graphs using CustomPainter.

Features
✅ Customizable graph width, height, stroke width
✅ Gradient background support
✅ Supports both X and Y-axis values
✅ Customizable graph line color
✅ Lightweight and easy to integrate

to `/example` folder.

```dart

const like = 'sample';
```

## Additional information

Getting Started

import 'package:flutter/material.dart';
import 'package:graph_curved_gradient_fill/graph_curved_gradient_fill.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(title: Text("Graph Chart Example")),
body: Center(
child: GraphChart(
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
),
),
),
);
}
}
Additional Information
This package utilizes Flutter’s CustomPainter to render smooth, gradient-filled graphs dynamically.
