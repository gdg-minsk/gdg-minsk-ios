//
//  EventsSceneBuilderSpec.swift
//  gdgminskTests
//
//  Created by Anton Polyakov on 5/28/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Quick
import Nimble
@testable import gdgminsk

class EventsSceneBuilderSpec: QuickSpec {
    
    private let session = Session()
    
    override func spec() {
        context("The 'EventsSceneBuilder make scene'") {
            let eventsView = EventsSceneBuilder().makeScene(session: session)
            
            it("should have injected viewModel") {
                expect(eventsView.viewModel).toNot(beNil())
            }
            
            it("should have injected router") {
                expect(eventsView.viewModel?.router).toNot(beNil())
            }
        }
    }
}
