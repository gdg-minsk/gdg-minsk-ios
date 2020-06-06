//
//  EventDetailsModuleBuilderSpec.swift
//  gdgminskTests
//
//  Created by Anton Polyakov on 6/6/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Quick
import Nimble
@testable import gdgminsk

class EventDetailsModuleBuilderSpec: QuickSpec {
    
    private let session = Session()
    
    override func spec() {
        context("The 'EventDetailsModuleBuilder make module'") {
            let eventDetailsView = EventDetailsModuleBuilder().makeModule(session: session)
            
            it("should have injected viewModel") {
                expect(eventDetailsView.viewModel).toNot(beNil())
            }
            
            it("should have injected router") {
                expect(eventDetailsView.viewModel?.router).toNot(beNil())
            }
        }
    }
}
