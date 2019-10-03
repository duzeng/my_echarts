import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:my_echarts/echarts.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var option = {
      "title": {
        "text":"Echarts entry example"
      },
      "tooltip": {},
      "lengend": {
        "data": ["Sales"]
      },
      "xAxis": {
        "data": ["shirt","cardign","chiffon shirt","pants","heels","socks"]
      },
      "yAxis": {},
      "series": [
        {
          "name":"Sales",
          "data": [5, 20, 36, 10, 10, 20],
          "type": "bar"
        }
      ]
    };

    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: const Text('Flutter Echarts Plugin Example'),
          ),
          body: new SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                //Expanded(child: Echarts( data: option),)
                new Container(
                  child: Echarts(height: 300, data: option),
                  height: 300.0,
                  width: 500.0,
                ),
              ],
            ),
          )),
    );
  }
}
