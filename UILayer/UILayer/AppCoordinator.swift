//
//  AppCoordinator.swift
//  UILayer
//
//  Created by Miso Lubarda on 20.03.20.
//  Copyright © 2020 Miso Lubarda. All rights reserved.
//

import SwiftUI

public protocol AppCoordinatorDependencies {}

class AppCoordinator {
    let window: UIWindow

    init(windowScene: UIWindowScene, dependencies: AppCoordinatorDependencies) {
        let window = UIWindow(windowScene: windowScene)
        self.window = window
    }

    func start() {
        window.rootViewController = UIHostingController(rootView: ContentView())
        window.makeKeyAndVisible()
    }
}
