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
    
    private let eventUseCase: EventUseCaseProtocol?
    
    // MARK: - Init
    
    override init(session: SessionType? = nil, router: EventsRouter? = nil) {
        self.eventUseCase = session?.resolve()
        super.init(session: session, router: router)
    }
}

// MARK: - ViewModelTransformable

extension EventsViewModel: ViewModelTransformable {

    typealias Input = EventsViewModel.ViewModelInput
    typealias Output = EventsViewModel.ViewModelOutput
    
    func transform(_ input: Input) -> Output {
        let eventsStates = input.viewLoaded
            .flatMap { [weak self] in
                self?.eventUseCase?.loadEvents().asDriverOnErrorJustComplete() ?? .empty()
            }
        
        return Output(
            eventsStates: eventsStates
        )
    }
}

// MARK: - ViewModel Input & Output

extension EventsViewModel {
    
    struct ViewModelInput {
        let viewLoaded: Driver<Void>
    }
    
    struct ViewModelOutput {
        let eventsStates: Driver<[EventTableCell.State]>
    }
}
