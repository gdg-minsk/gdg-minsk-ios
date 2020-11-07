//
//  EventsViewModel.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 5/26/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation
import MVVMplusR
import RxSwift
import RxCocoa

final class EventsViewModel: BaseViewModel<EventsRouter> {
    
    // MARK: - Properties
    
    private let eventService: EventRepositoryProtocol?
    
    // MARK: - Init
    
    override init(session: SessionType? = nil, router: EventsRouter? = nil) {
        self.eventService = session?.resolve()
        super.init(session: session, router: router)
    }
}

// MARK: - ViewModelTransformable

extension EventsViewModel: ViewModelTransformable {

    typealias Input = EventsViewModel.ViewModelInput
    typealias Output = EventsViewModel.ViewModelOutput
    
    func transform(_ input: Input) -> Output {
        let viewLoadedTrigger = input.viewLoaded
            .flatMapLatest { [eventService] in
                eventService?.loadEvents().asDriverOnErrorJustComplete() ?? .empty()
            }
        
        return Output(
            viewLoadedTrigger: viewLoadedTrigger,
            eventsStates: eventService?.eventsStates.asDriverOnErrorJustComplete() ?? .empty()
        )
    }
}

// MARK: - ViewModel Input & Output

extension EventsViewModel {
    
    struct ViewModelInput {
        let viewLoaded: Driver<Void>
    }
    
    struct ViewModelOutput {
        let viewLoadedTrigger: Driver<Void>
        let eventsStates: Driver<[EventTableCell.State]>
    }
}
