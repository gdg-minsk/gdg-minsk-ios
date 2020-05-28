//
//  SessionSpecs.swift
//  gdgminskTests
//
//  Created by Anton Polyakov on 5/28/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Quick
import Nimble
@testable import gdgminsk

class SessionSpecs: QuickSpec {
    
    override func spec() {
        context("The 'Session init'") {
            it("should have all registered services") {
                let session = Session()
                
                let _: EventServiceProtocol = session.resolve()
                let _: SpeakerServiceProtocol = session.resolve()
            }
        }
    }
}
