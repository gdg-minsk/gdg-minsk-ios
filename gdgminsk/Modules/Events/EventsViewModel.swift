//
//  EventsViewModel.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 5/26/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation
import MVVMplusR

final class EventsViewModel: BaseViewModel<EventsRouter>, ItemsViewModelProtocol {
    
    typealias Item = EventViewItem
    
    private(set) var items: [Item] = []
}

public extension ItemsViewModelProtocol {
    
    func item(at rowIndex: Int) -> Item? {
        guard rowIndex >= 0, items.count > rowIndex else { return nil }
        return items[rowIndex]
    }
}
