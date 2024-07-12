// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "ExpandingMenu",
  products: [
    .library(
      name: "ExpandingMenu",
      targets: ["ExpandingMenu"]
    ),
  ],
  targets: [
    .target(
      name: "ExpandingMenu",
      resources: [
        .process("Sounds/expanding.caf"),
        .process("Sounds/fold.caf"),
        .process("Sounds/selected.caf")
      ]
    ),
    .testTarget(
      name: "ExpandingMenuTests",
      dependencies: ["ExpandingMenu"]
    ),
  ]
)
