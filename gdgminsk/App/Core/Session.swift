//
//  Session.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 5/1/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation
import Swinject

final class Session {

    /// Dependency container
    private let container = Container()

    init() {
        registerAppServices()
    }

    // MARK: Private

    /// Register services to DI Container
    private func registerAppServices() {
        // Event service
        container.register(EventServiceProtocol.self) { _ -> EventServiceProtocol in
            return MockEventService()
        }.inObjectScope(.container)

        // Speaker service
        container.register(SpeakerServiceProtocol.self) { _ -> SpeakerServiceProtocol in
            return MockSpeakerService()
        }.inObjectScope(.container)
    }
}

// MARK: SessionType

extension Session: SessionType {

    /// Return contained object or stops with fatal error
    func resolve<T>() -> T {
        guard let service = container.resolve(T.self) else {
            fatalError("Service is not registered '\(String(describing: T.self))'")
        }
        return service
    }
}
