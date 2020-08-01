//
//  MockEventService.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 5/2/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation
import RxSwift

final class MockEventService: EventServiceProtocol {

    func getEvents() -> Single<[EventViewItem]> {
        return Single<[EventViewItem]>.create { single in
            single(.success([]))
            return Disposables.create()
        }
    }
}
