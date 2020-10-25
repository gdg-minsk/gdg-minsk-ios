//
//  EventDetailsRoutable.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 6/6/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import UIKit
import MVVMplusR

protocol EventDetailsRoutable {
    
    func goToEventDetails()
    
}

extension EventDetailsRoutable where Self: RouterType {
    
    func goToEventDetails() {
        guard let session = session else { return }
        let eventDetailView = EventDetailsSceneBuilder().makeScene(session: session)
        self.view?.navigationController?.pushViewController(eventDetailView, animated: true)
    }
}
