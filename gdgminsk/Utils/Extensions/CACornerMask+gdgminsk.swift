//
//  CACornerMask+gdgminsk.swift
//  gdgminsk
//
//  Created by Anton Paliakou on 12/5/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import UIKit

extension CACornerMask {
    
    static var all: Self {
        [.layerMinXMinYCorner,
         .layerMaxXMinYCorner,
         .layerMinXMaxYCorner,
         .layerMaxXMaxYCorner]
    }
}
