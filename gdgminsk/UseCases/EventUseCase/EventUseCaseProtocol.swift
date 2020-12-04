//
//  EventUseCaseProtocol.swift
//  gdgminsk
//
//  Created by Anton Paliakou on 11/7/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation
import RxSwift

protocol EventUseCaseProtocol {
        
    func loadEvents() -> Observable<[EventTableCell.State]>
}
