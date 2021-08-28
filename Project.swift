import ProjectDescription

let demoKit = Target(
    name: "DemoKit",
    platform: .iOS,
    product: .staticLibrary, // changing this to a framework causes an error
    bundleId: "com.demo.demokit",
    deploymentTarget: .iOS(targetVersion: "14.0", devices: [.iphone, .ipad]),
    infoPlist: .default,
    sources: [
        "Targets/DemoKit/Sources/**",
    ],
    dependencies: [
        .external(name: "GRPC"),
    ])

let demoApp = Target(
    name: "DemoApp",
    platform: .iOS,
    product: .app,
    bundleId: "com.demo.app",
    deploymentTarget: .iOS(targetVersion: "14.0", devices: [.iphone, .ipad]),
    infoPlist: .default,
    sources: [
        "Targets/App/Sources/**",
    ],
    dependencies: [
        .target(name: "DemoKit"),
    ])

let project = Project(
    name: "GRPCDemo",
    targets: [
        demoKit,
        demoApp,
    ])
