import Foundation
import GRPC

public let channel = ClientConnection
    .usingPlatformAppropriateTLS(for: PlatformSupport.makeEventLoopGroup(loopCount: 1, networkPreference: .best))
    .connect(host: "api.demo.com", port: 8080)
