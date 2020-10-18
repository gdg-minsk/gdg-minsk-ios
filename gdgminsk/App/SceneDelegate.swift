//
//  SceneDelegate.swift
//  gdgminsk
//
//  Created by Anton Polyakov on 5/1/20.
//  Copyright © 2020 gdgminsk. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var session: Session?
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        self.window?.windowScene = windowScene
        let session = Session()
        self.session = session
        let eventsView = EventsSceneBuilder().makeScene(session: session)
        window?.rootViewController = eventsView
        window?.makeKeyAndVisible()
    }
}
