//
//  UILabel+Rx+gdgminsk.swift
//  gdgminsk
//
//  Created by Anton Paliakou on 10/31/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import BonMot
import RxCocoa
import RxSwift

extension Reactive where Base: UILabel {
    
    func styledText(style: StringStyle) -> Binder<String> {
        return Binder(self.base) { label, text in
            label.attributedText = text.styled(with: style)
        }
    }
}
