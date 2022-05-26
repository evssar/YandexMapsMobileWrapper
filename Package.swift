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
            revision: "22739758b23fd1ed5168df53fa488c6d28347caf"
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
