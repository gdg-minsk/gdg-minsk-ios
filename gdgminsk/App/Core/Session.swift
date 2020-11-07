//
//  Session.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 5/1/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation
import Swinject
import MVVMplusR

final class Session {
    
    // MARK: - Properties
    
    private let container = Container()

    // MARK: - Init
    
    init() {
        registerAppServices()
    }

    // MARK: - Private

    private func registerAppServices() {
        registerRepositories()
    }
    
    private func registerRepositories() {
        // Event repository
        container.register(EventRepositoryProtocol.self) { _ -> EventRepositoryProtocol in
            return MockEventRepository()
        }.inObjectScope(.container)

        // Speaker repository
        container.register(SpeakerRepositoryProtocol.self) { _ -> SpeakerRepositoryProtocol in
            return MockSpeakerRepository()
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
