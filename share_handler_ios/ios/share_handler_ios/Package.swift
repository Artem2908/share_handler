// swift-tools-version: 5.9
import Foundation
import PackageDescription

let modelsPath = URL(fileURLWithPath: #filePath)
    .resolvingSymlinksInPath()
    .deletingLastPathComponent()
    .appendingPathComponent("../Models/share_handler_ios_models")
    .standardizedFileURL.path

let package = Package(
    name: "share_handler_ios",
    platforms: [.iOS("14.0")],
    products: [
        .library(name: "share-handler-ios", targets: ["share_handler_ios"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(name: "share_handler_ios_models", path: modelsPath)
    ],
    targets: [
        .target(
            name: "share_handler_ios",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "share-handler-ios-models", package: "share_handler_ios_models")
            ]
        )
    ]
)
