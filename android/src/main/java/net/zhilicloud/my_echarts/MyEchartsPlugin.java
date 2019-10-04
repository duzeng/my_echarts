package net.zhilicloud.my_echarts;

import io.flutter.plugin.common.PluginRegistry.Registrar;

/**
 * MyEchartsPlugin
 */
public class MyEchartsPlugin {
    /**
     * Plugin registration.
     */
    public static void registerWith(Registrar registrar) {
        registrar.platformViewRegistry().registerViewFactory("my_echarts", new MyEChartsViewFactory(registrar));

    } 
}
