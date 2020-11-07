//
//  MockSpeakerRepository.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 5/2/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation
import RxSwift

final class MockSpeakerRepository: SpeakerRepositoryProtocol {

    func getSpeakers() -> Single<[Speaker]> {
        return Single<[Speaker]>.create { single in
            single(.success([]))
            return Disposables.create()
        }
    }
}
