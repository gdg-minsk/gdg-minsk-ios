//
//  MockEventRepository.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 5/2/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation
import RxSwift

final class MockEventRepository: EventRepositoryProtocol {
    
    // MARK: - Public
    
    func events() -> Single<[Event]> {
        Single.just([])
    }
}
