// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexMapsMobileWrapper",
    products: [
        .library(
            name: "YandexMapsMobileWrapper",
            targets: ["YandexMapsMobileWrapper"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/evssar/YandexMapsMobileBinary",
            revision: "b88d7fc0a37e453c754b31f8aaf9bdaca1426789"
        )
    ],
    targets: [
        .target(
            name: "YandexMapsMobileWrapper",
            dependencies: [
                "YandexMapsMobileBinary"
            ]),
        .testTarget(
            name: "YandexMapsMobileWrapperTests",
            dependencies: ["YandexMapsMobileWrapper"]),
    ]
)
