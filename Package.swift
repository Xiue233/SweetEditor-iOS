// swift-tools-version: 5.9

import PackageDescription

// Native module exposed by Vendor/iOS/SweetEditorCoreIOS.xcframework:
//   import SweetEditorCore
let package = Package(
    name: "SweetEditoriOS",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(name: "SweetEditoriOS", targets: ["SweetEditoriOS"]),
    ],
    targets: [
        .binaryTarget(
            name: "SweetEditorCoreIOS",
            path: "Vendor/iOS/SweetEditorCoreIOS.xcframework"
        ),
        .target(
            name: "SweetEditoriOS",
            dependencies: ["SweetEditorCoreIOS"]
        ),
        .testTarget(
            name: "SweetEditoriOSTests",
            dependencies: ["SweetEditoriOS"]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
