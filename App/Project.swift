import ProjectDescription

let project = Project(
    name: "TuistDemoApp",
    options: .options(
        disableSynthesizedResourceAccessors: true
    ),
    settings: .settings(base: [
        "ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS": true
    ]),
    targets: [
        .target(
            name: "TuistDemoApp",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.App",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ]
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .external(name: "TuistDemoFramework")
            ]
        ),
        .target(
            name: "TuistDemoAppTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.AppTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: "TuistDemoApp")]
        ),
    ]
)
