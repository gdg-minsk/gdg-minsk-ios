//
//  EventTableCell.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 6/7/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import UIKit

final class EventTableCell: UITableViewCell {
    
}

// MARK: TableCellDataBindable

extension EventTableCell: TableCellDataBindable {
        
    typealias ViewItem = EventViewItem
    
    func bind(_ item: EventViewItem) {
        
    }
}
