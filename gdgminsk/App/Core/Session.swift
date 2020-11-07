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
        registerRepositories()
        registerUseCases()
    }

    // MARK: - Private
    
    private func registerRepositories() {
        // Event Repository
        container.register(EventRepositoryProtocol.self) { _ -> EventRepositoryProtocol in
            return MockEventRepository()
        }.inObjectScope(.container)

        // Speaker Repository
        container.register(SpeakerRepositoryProtocol.self) { _ -> SpeakerRepositoryProtocol in
            return MockSpeakerRepository()
        }.inObjectScope(.container)
    }
    
    private func registerUseCases() {
        // Event UseCase
        container.register(EventUseCaseProtocol.self) { resolver -> EventUseCaseProtocol in
            guard let eventRepository = resolver.resolve(EventRepositoryProtocol.self) else {
                fatalError("EventRepositoryProtocol is not registered")
            }
            return EventUseCase(eventRepository: eventRepository)
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
