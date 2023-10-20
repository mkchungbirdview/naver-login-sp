// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NaverLoginThirdPartySPM",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "NaverLoginThirdPartySPM", targets: ["NaverLoginThirdPartySPM"]),
    ],
    targets: [
        .binaryTarget(name: "NaverThirdPartyLogin", path: "./Frameworks/NaverThirdPartyLogin.xcframework"),
        .target(name: "NaverLoginThirdPartySPM", dependencies: ["NaverThirdPartyLogin"]),
    ]
)
