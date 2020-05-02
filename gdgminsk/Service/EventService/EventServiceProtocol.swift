//
//  EventServiceProtocol.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 5/2/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation
import ReactiveSwift

protocol EventServiceProtocol {

    func getEvents() -> SignalProducer<[EventViewItem], Error>
}
