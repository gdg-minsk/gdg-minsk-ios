//
//  SpeakersSceneBuilder.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 6/6/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation
import MVVMplusR

final class SpeakersSceneBuilder: SceneBuilderProtocol {
 
    typealias SceneViewType = SpeakersView
    
    func makeScene(session: SessionType) -> SpeakersView {
        let view = StoryboardScene.Speakers.initialScene.instantiate()
        let router = SpeakersRouter(view: view)
        let viewModel = SpeakersViewModel(session: session, router: router)
        view.viewModel = viewModel
        return view
    }
}
