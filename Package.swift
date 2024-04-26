// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "LookpinListKit",
  platforms: [.iOS(.v13)],
  products: [
    .library(
      name: "LookpinListKit",
      targets: ["LookpinListKit"]),
  ],
  dependencies: [
    .package(
      url: "https://github.com/daangn/KarrotListKit.git",
      .upToNextMajor(from: "3.2.0")
    )
  ],
  targets: [
    .target(
      name: "LookpinListKit",
      dependencies: [
        "KarrotListKit"
      ]
    ),
    .testTarget(
      name: "LookpinListKitTests",
      dependencies: ["LookpinListKit"]
    ),
  ]
)
