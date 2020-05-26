//
//  EventsModuleBuilder.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 5/26/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation

final class EventsModuleBuilder: ModuleBuilderProtocol {
    
    typealias ModuleViewType = EventsView
    
    func makeModule(session: Session) -> ModuleViewType {
        let view = EventsView()
        let router = EventsRouter(view: view)
        let viewModel = EventsViewModel(session: session, router: router)
        view.viewModel = viewModel
        return view
    }
}
