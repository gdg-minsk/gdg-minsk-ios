//
//  EventDetailsModuleBuilder.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 6/6/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation
import MVVMplusR

final class EventDetailsModuleBuilder: ModuleBuilderProtocol {
 
    typealias ModuleViewType = EventDetailsView
    
    func makeModule(session: SessionType) -> EventDetailsView {
        let view = StoryboardScene.EventDetails.initialScene.instantiate()
        let router = EventDetailsRouter(view: view)
        let viewModel = EventDetailsViewModel(session: session, router: router)
        view.viewModel = viewModel
        return view
    }
}
