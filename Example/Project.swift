import ProjectDescription

let project = Project(
    name: "TuistDemoApp",
    // Necessary flag to resolve issue
//    settings: .settings(
//        base:[
//            "ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS":true
//        ]
//    ),
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
            sources: ["App/Sources/**"],
            resources: ["App/Resources/**"],
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
            sources: ["App/Tests/**"],
            resources: [],
            dependencies: [.target(name: "TuistDemoApp")]
        ),
    ]
)
