//
//  UIView+gdgminsk.swift
//  gdgminsk
//
//  Created by Anton Paliakou on 12/5/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import SnapKit

extension UIView {
    
    @discardableResult
    func makeSize(equalTo size: CGSize) -> UIView {
        snp.makeConstraints { $0.size.equalTo(size) }
        return self
    }
    
    @discardableResult
    func makeHeight(_ height: CGFloat) -> UIView {
        snp.makeConstraints { $0.height.equalTo(height) }
        return self
    }
    
    @discardableResult
    func makeWidth(_ width: CGFloat) -> UIView {
        snp.makeConstraints { $0.width.equalTo(width) }
        return self
    }
    
    @discardableResult
    func pinToSuperview(insets: UIEdgeInsets = .zero) -> UIView {
        snp.makeConstraints { $0.edges.equalToSuperview().inset(insets) }
        return self
    }
    
    @discardableResult
    func pinToTop(inset: CGFloat = .zero) -> UIView {
        snp.makeConstraints {
            $0.top.equalToSuperview().inset(inset)
        }
        return self
    }
    
    @discardableResult
    func pinToBottom(inset: CGFloat = .zero) -> UIView {
        snp.makeConstraints {
            $0.bottom.equalToSuperview().inset(inset)
        }
        return self
    }

    @discardableResult
    func pinToLeft(inset: CGFloat = .zero) -> UIView {
        snp.makeConstraints {
            $0.leading.equalToSuperview().inset(inset)
        }
        return self
    }
    
    @discardableResult
    func pinToRight(inset: CGFloat = .zero) -> UIView {
        snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(inset)
        }
        return self
    }
    
    @discardableResult
    func centerVertically() -> UIView {
        snp.makeConstraints { $0.centerY.equalToSuperview() }
        return self
    }
    
    @discardableResult
    func centerHorizontally() -> UIView {
        snp.makeConstraints { $0.centerX.equalToSuperview() }
        return self
    }
}
