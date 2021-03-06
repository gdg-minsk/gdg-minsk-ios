//
//  EventRepositoryProtocol.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 5/2/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation
import RxSwift

protocol EventRepositoryProtocol {
        
    func events() -> Single<[Event]>
}
