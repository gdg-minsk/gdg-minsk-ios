//
//  MockEventRepository.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 5/2/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation
import RxSwift

final class MockEventRepository: EventRepositoryProtocol {
    
    private let eventsStatesSubject = PublishSubject<[EventTableCell.State]>()
    
    // MARK: - Public
    
    var eventsStates: Observable<[EventTableCell.State]> {
        eventsStatesSubject.asObserver()
    }
    
    func loadEvents() -> Observable<Void> {
        .empty()
    }
}
