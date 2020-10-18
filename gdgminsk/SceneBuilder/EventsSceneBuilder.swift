//
//  EventsSceneBuilder.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 5/26/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation
import MVVMplusR

final class EventsSceneBuilder: SceneBuilderProtocol {
 
    typealias SceneViewType = EventsView
    
    func makeScene(session: SessionType) -> EventsView {
        let view = StoryboardScene.Events.initialScene.instantiate()
        let router = EventsRouter(view: view)
        let viewModel = EventsViewModel(session: session, router: router)
        view.viewModel = viewModel
        return view
    }
}
