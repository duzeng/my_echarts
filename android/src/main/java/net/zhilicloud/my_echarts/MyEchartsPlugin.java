package net.zhilicloud.my_echarts;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/**
 * MyEchartsPlugin
 */
public class MyEchartsPlugin {
    /**
     * Plugin registration.
     */
    public static void registerWith(Registrar registrar) {
        registrar.platformViewRegistry().registerViewFactory("my_echarts", new MyEchartsViewFactory(registrar));

    } 
}
