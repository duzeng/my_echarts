import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_echarts/my_echarts.dart';

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
    expect(await MyEcharts.platformVersion, '42');
  });
}
