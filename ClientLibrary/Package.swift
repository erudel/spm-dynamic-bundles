// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ClientLibrary",
    products: [
        .library(
            name: "ClientLibrary",
            targets: ["ClientLibrary"]
        ),
    ],
    dependencies: [
        .package(name: "BaseLibrary", path: "../BaseLibrary/")
    ],
    targets: [
        .target(
            name: "ClientLibrary",
            dependencies: [
                .byName(name: "BaseLibrary")
            ]
        ),
        .testTarget(
            name: "ClientLibraryTests",
            dependencies: ["ClientLibrary"]
        ),
    ]
)
