//
//  EventDetailsSceneBuilderSpec.swift
//  gdgminskTests
//
//  Created by Anton Polyakov on 6/6/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Quick
import Nimble
@testable import gdgminsk

class EventDetailsSceneBuilderSpec: QuickSpec {
    
    private let session = Session()
    
    override func spec() {
        context("The 'EventDetailsSceneBuilder make scene'") {
            let eventDetailsView = EventDetailsSceneBuilder().makeScene(session: session)
            
            it("should have injected viewModel") {
                expect(eventDetailsView.viewModel).toNot(beNil())
            }
            
            it("should have injected router") {
                expect(eventDetailsView.viewModel?.router).toNot(beNil())
            }
        }
    }
}
