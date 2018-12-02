import Foundation
import Vapor
import Redis

public struct QueueService: Service {
    let refreshInterval: TimeAmount
    let redisClient: RedisClient
    
    public func dispatch(job: Job) -> EventLoopFuture<Void> {
        return redisClient.future()
    }
}
