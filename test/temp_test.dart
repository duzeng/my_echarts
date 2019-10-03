import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_echarts/temp.dart';

void main() {
  const MethodChannel channel = MethodChannel('my_echarts');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await MyTempEcharts.platformVersion, '42');
  });
}
