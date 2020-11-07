//
//  EventUseCase.swift
//  gdgminsk
//
//  Created by Anton Paliakou on 11/7/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation
import RxSwift

final class EventUseCase: EventUseCaseProtocol {
    
    // MARK: - Properties
    
    private let eventRepository: EventRepositoryProtocol
    private let eventsStatesSubject = PublishSubject<[EventTableCell.State]>()
    
    // MARK: - Public
    
    init(eventRepository: EventRepositoryProtocol) {
        self.eventRepository = eventRepository
    }
    
    var eventsStates: Observable<[EventTableCell.State]> {
        eventsStatesSubject.asObserver()
    }
    
    func loadEvents() -> Observable<Void> {
        eventRepository.events()
            .asObservable()
            .mapToVoid()
    }
}
