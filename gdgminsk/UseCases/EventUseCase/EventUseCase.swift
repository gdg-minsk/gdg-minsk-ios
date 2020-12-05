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
    
    // MARK: - Init
    
    init(eventRepository: EventRepositoryProtocol) {
        self.eventRepository = eventRepository
    }
    
    // MARK: - Public
    
    func loadEvents() -> Observable<[EventTableCell.State]> {
        eventRepository.events()
            .asObservable()
            .map {
                $0.map {
                    EventTableCell.State(title: $0.title,
                                         date: "28",
                                         month: "January",
                                         address: "ул. Октябрьская 16/4 (SPACE)",
                                         isPast: $0.isPast)
                }
            }
    }
}
