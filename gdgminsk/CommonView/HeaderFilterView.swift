//
//  HeaderFilterView.swift
//  gdgminsk
//
//  Created by Anton Paliakou on 12/5/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import UIKit

final class HeaderFilterView: UIView {
    
    // MARK: - Properties
    
    var state: State? {
        didSet {
            updateAppearance()
        }
    }
    
    private var titleLabel = UILabel()
    private(set) var filterButton = UIButton()
    
    // MARK: - Init
    
    init() {
        super.init(frame: .zero)
        setupViews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }
    
    // MARK: - Private
    
    private func setupViews() {
        makeHeight(50)
        addSubview(titleLabel)
        titleLabel
            .centerVertically()
            .pinToLeft(inset: 28)
        
        addSubview(filterButton)
        filterButton.setBackgroundImage(Asset.Images.filter.image, for: .normal)
        filterButton
            .makeSize(equalTo: .init(width: 40, height: 40))
            .pinToRight(inset: 16)
    }
    
    private func updateAppearance() {
        guard let state = state else { return }
        titleLabel.attributedText = state.title.styled(with: .regularText)
    }
}

// MARK: - State

extension HeaderFilterView {
    
    struct State {
        let title: String
    }
}
