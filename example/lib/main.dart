import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:my_echarts/echarts.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(ExampleApp());
}

class ExampleApp extends StatefulWidget {
  @override
  _ExampleAppState createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  Map<String, dynamic> _option = {};

  @override
  void initState() {
    super.initState();
    var option = {
      "xAxis": {
        "type": 'category',
        "data": ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
      },
      "yAxis": {"type": 'value'},
      "series": [
        {
          "data": [820, 932, 901, 934, 1290, 1330, 1320],
          "type": 'line',
          "smooth": true
        }
      ]
    };
    setState(() {
      _option = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Echarts Plugin Example'),
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: Echarts(data: _option),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      child: Text('Update'),
                      onPressed: () {
                        _update();
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              )
            ],
          )),
    );
  }

  _update() {
    var option = {
      "title": {"text": "Echarts entry example"},
      "tooltip": {},
      "lengend": {
        "data": ["Sales"]
      },
      "xAxis": {
        "data": ["shirt", "cardign", "chiffon shirt", "pants", "heels", "socks"]
      },
      "yAxis": {},
      "series": [
        {
          "name": "Sales",
          "data": [5, 20, 36, 10, 10, 20],
          "type": "bar"
        }
      ]
    };

    setState(() {
      _option = option;
    });
  }
}
