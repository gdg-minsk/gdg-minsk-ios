//
//  EventsTableSource+Rx.swift
//  gdgminsk
//
//  Created by Anton Paliakou on 10/31/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import RxCocoa
import RxSwift

extension Reactive where Base: EventsTableSource {
    
    var events: Binder<[EventTableCell.State]> {
        return Binder(base) { dataSource, events in
            dataSource.states = events
        }
    }
}
