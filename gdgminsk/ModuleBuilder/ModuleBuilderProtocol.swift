//
//  ModuleBuilderProtocol.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 5/1/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import Foundation

protocol ModuleBuilderProtocol {
    associatedtype ModuleViewType

    func makeModule(session: Session) -> ModuleViewType
}
