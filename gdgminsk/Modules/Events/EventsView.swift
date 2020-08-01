//
//  EventsViewController.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 5/26/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import UIKit
import MVVMplusR

final class EventsView: BaseView<EventsViewModel> {
    
    // MARK: Properties
    
    @IBOutlet weak private var tableView: UITableView!

    // MARK: Overrides
    
    override func setup() {
        super.setup()
        setupTableView()
    }
    
    override func bindViewModel() {
        super.bindViewModel()
        
    }
    
    // MARK: Private
    
    private func setupTableView() {
        tableView.register(EventTableCell.nib, forCellReuseIdentifier: EventTableCell.identifier)
        tableView.rowHeight = UITableView.automaticDimension
    }
}
