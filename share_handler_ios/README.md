# share_handler_ios

This is an implementation of the `share_handler_platform_interface` package for iOS.

## Requirements

- Flutter 3.44 / Dart 3.12 or later.
- iOS 14.0 or later.
- Swift Package Manager requires Xcode 15 or later (Swift tools 5.9).

## Swift Package Manager and ShareExtension

The Flutter plugin uses the `share-handler-ios` product in `ios/share_handler_ios`.
The separate package in `ios/Models/share_handler_ios_models` provides the `share-handler-ios-models` product
and the `share_handler_ios_models` module without depending on Flutter.
Its dependency path is resolved from the real plugin manifest location so Flutter
symlinks and Git-cache locations work consistently.

To migrate an existing ShareExtension to Swift Package Manager:

1. Add `ios/Models/share_handler_ios_models` from the resolved `share_handler_ios` plugin directory as a local Swift package in Xcode.
2. Add only the `share-handler-ios-models` product to the ShareExtension target. Do not link the Flutter plugin product to the extension.
3. Keep `import share_handler_ios_models` and the existing `ShareHandlerIosViewController` subclass.
4. Preserve the matching App Groups entitlements and `AppGroupId` values in the app and extension.
5. Remove the `share_handler_ios_models` CocoaPods dependency from the extension only after adding its Swift package replacement.

During a gradual migration, the app can use the SPM plugin while ShareExtension
continues to use the CocoaPods models module.

The CocoaPods integration remains supported. The existing podspec paths and
`share_handler_ios_models` module name are unchanged. Both integrations compile
the same Swift implementation and use the same shared-media encoding.

## Usage

### With the `share_handler` plugin

This package is the endorsed implementation of the `share_handler` plugin, so it gets automatically added to your [dependencies](https://flutter.dev/platform-plugins/) by adding the `share_handler` package to your `pubspec.yaml`:

```yaml
dependencies:
  share_handler: 
```