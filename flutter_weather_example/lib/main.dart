import 'package:flutter/material.dart';
import 'package:flutter_example/weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final String title = 'Home Demo Home Page';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          margin: const EdgeInsets.all(15.0),
          child: const WeatherForecast(),
        )
      )
    );
  }
}

class WeatherForecast extends StatelessWidget{
  const WeatherForecast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final weather = [
      Weather('JB', 26.5, 91),
      Weather('KL', 27.5, 92),
      Weather('Penang', 28.5, 93),
    ];

    return DataTable(
      //border: TableBorder.all(),
      // defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columns: const [
        DataColumn(label: Text('Location')),
        DataColumn(label: Text('Temperature')),
        DataColumn(label: Text('Humidity')),
      ],
      rows: weather.map((e) => DataRow(
          cells: [
            DataCell(Text(e.location)),
            DataCell(Text('${e.temperature}')),
            DataCell(Text('${e.humidity}'))
          ]
      )).toList(),
    );
  }
}
