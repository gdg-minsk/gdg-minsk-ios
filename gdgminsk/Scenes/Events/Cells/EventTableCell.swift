//
//  EventTableCell.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 6/7/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import UIKit

final class EventTableCell: UITableViewCell {
    
    // MARK: - Properties
    
    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak private var dateLabel: UILabel!
    @IBOutlet weak private var monthLabel: UILabel!
    @IBOutlet weak private var addressLabel: UILabel!
}

// MARK: - CellDataBindable

extension EventTableCell: CellDataBindable {
        
    typealias Item = EventTableCell.State
    
    func bind(_ item: Item) {
        titleLabel.text = item.title
        dateLabel.text = item.date
        monthLabel.text = item.month
        addressLabel.text = item.adress
    }
}

// MARK: - State

extension EventTableCell {
    
    struct State {
        let title: String
        let date: String
        let month: String
        let adress: String
    }
}
