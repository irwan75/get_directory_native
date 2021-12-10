import Flutter
import UIKit

public class SwiftGetDirectoryNativePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "get_directory_native", binaryMessenger: registrar.messenger())
    let instance = SwiftGetDirectoryNativePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    // result("iOS " + UIDevice.current.systemVersion)
    // var urlString: String = getDocumentsDirectory().absoluteString
    var urlString: String = "get_directory_native"
    result(urlString)
  }

  func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .downloadsDirectory, in: .userDomainMask)
        return paths[0]
    }


}
