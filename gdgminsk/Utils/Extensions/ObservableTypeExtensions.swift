//
//  ObservableTypeExtensions.swift
//  gdgminsk
//
//  Created by Anton Paliakou on 8/1/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import RxSwift
import RxCocoa

extension ObservableType {
    
    func asDriverOnErrorJustComplete() -> Driver<Element> {
        return asDriver { error in
            return Driver.empty()
        }
    }
    
    func mapToVoid() -> Observable<Void> {
        return map { _ in }
    }
}
