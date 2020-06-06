//
//  UITableViewCellExtensions.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 6/7/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import UIKit

extension UITableViewCell {

    static var nib: UINib? {
        if Bundle.main.path(forResource: String(describing: self), ofType: "nib") != nil {
            return UINib(nibName: String(describing: self), bundle: nil)
        } else {
            return UINib(nibName: String(describing: self), bundle: Bundle(for: self))
        }
    }

    static var identifier: String {
        return String(describing: self)
    }
}
