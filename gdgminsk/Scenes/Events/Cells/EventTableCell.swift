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
    
    @IBOutlet weak private var contentContainer: UIView!
    @IBOutlet weak private var futureBackgroundView: UIView!
    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak private var dateLabel: UILabel!
    @IBOutlet weak private var monthLabel: UILabel!
    @IBOutlet weak private var addressLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let cornerRadius: CGFloat = 10
        contentContainer.layer.cornerRadius = cornerRadius
        contentContainer.layer.maskedCorners = .all
        futureBackgroundView.layer.cornerRadius = cornerRadius
        futureBackgroundView.layer.maskedCorners = .all
    }
}

// MARK: - CellDataBindable

extension EventTableCell: CellDataBindable {
        
    typealias Item = EventTableCell.State
    
    func bind(_ item: Item) {
        titleLabel.attributedText = item.title.styled(with: .eventTitle)
        dateLabel.attributedText = item.date.styled(with: .eventDate)
        monthLabel.attributedText = item.month.uppercased().styled(with: .eventMonth)
        addressLabel.attributedText = item.address.styled(with: .eventAddress)
        futureBackgroundView.isHidden = item.isPast
    }
}

// MARK: - State

extension EventTableCell {
    
    struct State {
        let title: String
        let date: String
        let month: String
        let address: String
        let isPast: Bool
    }
}
