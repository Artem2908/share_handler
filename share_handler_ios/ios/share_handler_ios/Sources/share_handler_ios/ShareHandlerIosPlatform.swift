#if SWIFT_PACKAGE
import Flutter

@objc(ShareHandlerIosPlatform)
public class ShareHandlerIosPlatform: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        SwiftShareHandlerIosPlatform.register(with: registrar)
    }
}
#endif
