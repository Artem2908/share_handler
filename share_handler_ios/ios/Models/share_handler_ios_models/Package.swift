// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "share_handler_ios_models",
    platforms: [.iOS("14.0")],
    products: [
        .library(name: "share-handler-ios-models", targets: ["share_handler_ios_models"])
    ],
    targets: [
        .target(name: "share_handler_ios_models")
    ]
)
