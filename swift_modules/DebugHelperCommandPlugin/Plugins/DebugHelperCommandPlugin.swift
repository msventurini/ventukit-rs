import PackagePlugin
import struct Foundation.URL

@main
struct DebugHelperCommandPlugin: CommandPlugin {
    // Entry point for command plugins applied to Swift Packages.
    func performCommand(context: PluginContext, arguments: [String]) async throws {
        print("Hello, World!")
    }
}

#if canImport(XcodeProjectPlugin)
import XcodeProjectPlugin

extension DebugHelperCommandPlugin: XcodeCommandPlugin {
    // Entry point for command plugins applied to Xcode projects.
    func performCommand(context: XcodePluginContext, arguments: [String]) throws {
        print("Hello, World!")
    }
}

#endif
