//
//  CellDataBindable.swift
//  gdgminsk
//
//  Created by Anton Paliakou on 8/1/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation

protocol CellDataBindable {
    
    associatedtype Item
    
    func bind(_ item: Item)
}
