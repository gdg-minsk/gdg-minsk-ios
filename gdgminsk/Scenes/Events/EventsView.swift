//
//  EventsViewController.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 5/26/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import UIKit
import MVVMplusR
import RxSwift

final class EventsView: BaseView<EventsViewModel> {
    
    // MARK: Properties
    
    @IBOutlet weak private var tableView: UITableView!
    
    private let disposeBag = DisposeBag()
    
    // MARK: Overrides
    
    override func setup() {
        super.setup()
        setupTableView()
    }
    
    override func bindViewModel() {
        super.bindViewModel()
        guard let viewModel = viewModel else { return }
        
        let viewWillAppear = rx.sentMessage(#selector(UIViewController.viewWillAppear(_:)))
            .mapToVoid()
            .asDriverOnErrorJustComplete()
        
        let output = viewModel.transform(EventsViewModel.Input(
            dataRefreshTrigger: viewWillAppear
        ))
        
        output.events.drive(tableView.rx.items(cellIdentifier: EventTableCell.identifier,
                                               cellType: EventTableCell.self)) { _, item, cell in
            cell.bind(item)
        }.disposed(by: disposeBag)
        
    }
    
    // MARK: Private
    
    private func setupTableView() {
        tableView.register(EventTableCell.nib, forCellReuseIdentifier: EventTableCell.identifier)
        tableView.rowHeight = UITableView.automaticDimension
    }
}
