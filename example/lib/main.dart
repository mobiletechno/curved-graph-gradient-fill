import 'package:flutter/material.dart';
import 'package:graph_curved_gradient_fill/chart_widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<Map<String, double>> xValues = [
    {"day 1": 80.0},
    {"day 2": 50.0},
    {"day 3": 30.0},
    {"day 4": 50.0},
    {"day 5": 10.0},
    {"day 6": 0.0},
    {"day 7": 100.0},
  ];

  // Define the Y axis values for the chart
  // String will be text label and double will be value in the Map<String, double>
  final List<Map<String, double>> yValues = [
    {"0": 0.0},
    {"20": 20.0},
    {"40": 40.0},
    {"60": 60.0},
    {"80": 80.0},
    {"100": 100.0},
  ];

  // Define the stroke width for the chart line
  final stroke = 2.0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: LayoutBuilder(builder: (context, constraints) => Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        // child:GraphChart(constraints.maxWidth,constraints.maxHeight/2,2.0,yValues,xValues,Colors.red,Colors.green))));
    child:GraphChart(
      width: 300,
      height: 200,
      stroke: 2.0,
      yValues: yValues,
      xValues: xValues,
      backgroundChartGradientOne: Colors.blue,
      backgroundChartGradientTwo: Colors.white,
      graphGradientOne: Colors.green,
      graphGradientTwo: Colors.white,
      colorGraphLine: Colors.red,
    ))));


  }
}
