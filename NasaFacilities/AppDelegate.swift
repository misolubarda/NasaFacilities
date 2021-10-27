//
//  AppDelegate.swift
//  NasaFacilities
//
//  Created by Miso Lubarda on 19.03.20.
//  Copyright © 2020 Miso Lubarda. All rights reserved.
//

import UIKit
import UILayer

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var appDependencies: AppDependencies!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        appDependencies = AppDependencies()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        let config = UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
        config.delegateClass = SceneDelegate.self
        return config
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}

extension AppDelegate: SceneDelegateDependenciesSource {
    var dependencies: SceneDelegateDependencies { appDependencies }
}

