//
//  SessionTests.swift
//  gdgminskTests
//
//  Created by Anton Polyakov on 5/2/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import XCTest
@testable import gdgminsk

class SessionTests: XCTestCase {

    func testWhenSessionInitShouldHaveAllRegisteredServices() {
        let session = Session()
        let _: EventServiceProtocol = session.resolve()
        let _: SpeakerServiceProtocol = session.resolve()
    }
}
