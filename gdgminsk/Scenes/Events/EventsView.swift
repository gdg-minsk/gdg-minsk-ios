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
    
    private var tableDataSource = EventsTableSource()
    private let disposeBag = DisposeBag()
    
    // MARK: Overrides
    
    override func setup() {
        super.setup()
        setupTableView()
    }
    
    override func bindViewModel() {
        super.bindViewModel()
        guard let viewModel = viewModel else { return }
                
        let output = viewModel.transform(EventsViewModel.Input(
            viewLoaded: rx.viewWillAppear.take(1).mapToVoid().asDriverOnErrorJustComplete()
        ))
        
        disposeBag.insert(
            output.viewLoadedTrigger.drive(),
            output.eventsStates.drive(tableDataSource.rx.events)
        )
    }
    
    // MARK: Private
    
    private func setupTableView() {
        tableDataSource.register(tableView)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
    }
}
