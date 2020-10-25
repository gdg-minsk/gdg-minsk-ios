//
//  SpeakersSceneBuilderSpec.swift
//  gdgminskTests
//
//  Created by Anton Polyakov on 6/6/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Quick
import Nimble
@testable import gdgminsk

class SpeakersSceneBuilderSpec: QuickSpec {
    
    private let session = Session()
    
    override func spec() {
        context("The 'SpeakersSceneBuilder make scene'") {
            let speakersView = SpeakersSceneBuilder().makeScene(session: session)
            
            it("should have injected viewModel") {
                expect(speakersView.viewModel).toNot(beNil())
            }
            
            it("should have injected router") {
                expect(speakersView.viewModel?.router).toNot(beNil())
            }
        }
    }
}
