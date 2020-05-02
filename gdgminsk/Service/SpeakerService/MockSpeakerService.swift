//
//  MockSpeakerService.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 5/2/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation
import ReactiveSwift

final class MockSpeakerService: SpeakerServiceProtocol {

    func getSpeakers() -> SignalProducer<[SpeakerViewItem], Error> {
        return SignalProducer(value: [])
    }
}
