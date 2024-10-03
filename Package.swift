// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "FoxentrySdk",
    platforms: [.iOS(.v13), .macOS(.v10_15), .tvOS(.v13), .watchOS(.v6)],
    products: [
        .library(
            name: "FoxentrySdk",
            targets: ["FoxentrySdk"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "FoxentrySdk",
            path: "src/FoxentrySdk"
        ),
        .testTarget(
            name: "FoxentrySdkTests",
            dependencies: ["FoxentrySdk"],
            path: "src/FoxentrySdkTests"
        ),
    ]
)
