import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EChartsWebController {
  EChartsWebController();

  EChartsWebController.init(int id) {
    _channel = new MethodChannel('my_echarts_$id');
    _pageFinsihed = EventChannel('my_echarts_stream_pagefinish_$id');
    //_pageStarted = EventChannel('flutter_echart_stream_pagestart_$id');
  }

  init(int id) {
    _channel = new MethodChannel('my_echarts_$id');
    _pageFinsihed = EventChannel('my_echarts_stream_pagefinish_$id');
  }

  MethodChannel _channel;
  EventChannel _pageFinsihed;
  EventChannel _pageStarted;

  Future<void> loadUrl(String url) async {
    assert(url != null);
    return _channel.invokeMethod('loadUrl', url);
  }

  Future<void> loadData(String html) async {
    assert(html != null);
    return _channel.invokeMethod('loadData', html);
  }

  Future<void> evalJs(String code) async {
    assert(code != null);
    return _channel.invokeMethod('evalJs', code);
  }

  Future<void> evalJsOfMap(Map code) async {
    assert(code != null);
    var data = json.encode(code).toString();
    return _channel.invokeMethod('evalJs', data);
  }

  Stream<String> get onPageFinished {
    var url = _pageFinsihed
        .receiveBroadcastStream()
        .map<String>((element) => element);
    return url;
  }

  Stream<String> get onPageStarted {
    var url =
        _pageStarted.receiveBroadcastStream().map<String>((element) => element);
    return url;
  }
}
