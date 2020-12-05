//
//  TabBarController.swift
//  gdgminsk
//
//  Created by Anton Paliakou on 12/5/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import UIKit
import MVVMplusR

final class TabBarController: UITabBarController {
    
    // MARK: - Properties
    
    private let session: SessionType
    
    // MARK: - Init
    
    init(session: SessionType) {
        self.session = session
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifeycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }
    
    // MARK: - Private
    
    private func setupTabs() {
        // Events
        let eventsTab = EventsSceneBuilder().makeScene(session: session)
        eventsTab.tabBarItem.title = L10n.Events.title
        
        // Speakers
        let speakersTab = SpeakersSceneBuilder().makeScene(session: session)
        speakersTab.tabBarItem.title = L10n.Speakers.title
    
        self.viewControllers = [eventsTab, speakersTab]
    }
    
}
