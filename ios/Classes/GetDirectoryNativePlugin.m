#import "GetDirectoryNativePlugin.h"
#if __has_include(<get_directory_native/get_directory_native-Swift.h>)
#import <get_directory_native/get_directory_native-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "get_directory_native-Swift.h"
#endif

@implementation GetDirectoryNativePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGetDirectoryNativePlugin registerWithRegistrar:registrar];
}
@end
