//
//  StringStyle+gdgminsk.swift
//  gdgminsk
//
//  Created by Anton Paliakou on 12/5/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import BonMot

extension StringStyle {
    
    static let regularText = StringStyle(
        .font(FontFamily.Roboto.regular.font(size: 14)),
        .color(Asset.Colors.gray.color)
    )
}
