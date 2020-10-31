//
//  EventsTableSource.swift
//  gdgminsk
//
//  Created by Anton Paliakou on 10/31/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import UIKit

final class EventsTableSource: NSObject {
    
    // MARK: - Properties
    
    var states: [EventTableCell.State] = [] {
        didSet {
            tableView?.reloadData()
        }
    }
    
    private var tableView: UITableView?
    
    // MARK: - Public
    
    func register(_ tableView: UITableView) {
        tableView.register(EventTableCell.nib, forCellReuseIdentifier: EventTableCell.identifier)
        self.tableView = tableView
        tableView.delegate = self
        tableView.dataSource = self
    }
}

// MARK: - UITableViewDelegate

extension EventsTableSource: UITableViewDelegate {
    
}

// MARK: - UITableViewDataSource

extension EventsTableSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        states.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
}
