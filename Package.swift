// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "TuistDemoFramework",
  platforms: [
    .iOS(.v18)
  ],
  products: [
    .library(
      name: "TuistDemoFramework",
      targets: ["TuistDemoFramework"]
    )
  ],
  dependencies: [],
  targets: [
    .target(
      name: "TuistDemoFramework",
      dependencies: [],
      path: "Framework"
    )
  ]
)
