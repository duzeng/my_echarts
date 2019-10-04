#import "MyEchartsPlugin.h"

@implementation MyEchartsPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterNativeWebFactory* webviewFactory =
      [[FlutterNativeWebFactory alloc] initWithMessenger:registrar.messenger];
  [registrar registerViewFactory:webviewFactory withId:@"my_echarts"];
}

@end
