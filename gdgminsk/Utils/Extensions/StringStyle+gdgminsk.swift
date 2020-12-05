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
    
    static let eventTitle = StringStyle(
        .font(FontFamily.Roboto.regular.font(size: 21)),
        .color(Asset.Colors.darkBlue.color)
    )
    
    static let eventAddress = StringStyle(
        .font(FontFamily.RobotoCondensed.regular.font(size: 14)),
        .color(Asset.Colors.gray.color)
    )
    
    static let eventMonth = StringStyle(
        .font(FontFamily.Roboto.regular.font(size: 12)),
        .color(Asset.Colors.gray.color)
    )
    
    static let eventDate = StringStyle(
        .font(FontFamily.Roboto.regular.font(size: 32)),
        .color(Asset.Colors.gray.color)
    )
}
