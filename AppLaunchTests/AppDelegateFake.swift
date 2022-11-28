//
//  AppDelegateUseToTest.swift
//  AppLaunch
//
//  Created by Banca March on 24/11/22.
//  
//

import UIKit

@objc(AppDelegateUseToTest)
class AppDelegateFake: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        print("Usando AppDelegateUseToTest")
        
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        
        let sceneConfiguration = UISceneConfiguration(name: nil, sessionRole: connectingSceneSession.role)
        sceneConfiguration.delegateClass = SceneDelegateFake.self
        sceneConfiguration.storyboard = nil
        
        return sceneConfiguration
    }
}

