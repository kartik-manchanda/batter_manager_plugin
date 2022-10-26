#import "BatteryManagerPlugin.h"
#if __has_include(<battery_manager/battery_manager-Swift.h>)
#import <battery_manager/battery_manager-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "battery_manager-Swift.h"
#endif

@implementation BatteryManagerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBatteryManagerPlugin registerWithRegistrar:registrar];
}
@end



