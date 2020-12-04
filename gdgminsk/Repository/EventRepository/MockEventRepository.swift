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
        Single.just([
            .init(title: "GDG Minsk Cloud Meetup",
                  date: Date(),
                  place: "SPACE",
                  address: "ул. Октябрьская 16/4"),
            
            .init(title: "GDG Minsk Cloud Meetup 1",
                  date: Date(),
                  place: "SPACE",
                  address: "ул. Октябрьская 16/4"),
            
            .init(title: "GDG Minsk Cloud Meetup 2",
                  date: Date(),
                  place: "SPACE",
                  address: "ул. Октябрьская 16/4")
        ])
    }
}
