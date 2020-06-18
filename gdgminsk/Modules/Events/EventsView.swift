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

    @IBOutlet private weak var eventsTableView: UITableView!

    override func setup() {
        super.setup()
        eventsTableView.register(EventTableCell.nib, forCellReuseIdentifier: EventTableCell.identifier)
    }
}

// MARK: UITableViewDelegate

extension EventsView: UITableViewDelegate {

}

// MARK: UITableViewDataSource

extension EventsView: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.items.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let item = viewModel?.item(at: indexPath.row),
        let cell = tableView.dequeueReusableCell(withIdentifier: EventTableCell.identifier, for: indexPath) as? EventTableCell else {
            return UITableViewCell()
        }
        cell.bind(item)
        return cell
    }
}
