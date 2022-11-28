//
//  SceneDelegateFake.swift
//  AppLaunch
//
//  Created by Banca March on 24/11/22.
//  
//

import UIKit

class SceneDelegateFake: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        print("Usando SceneDelegateFake")
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = TestViewController()
        window?.makeKeyAndVisible()
    }
}
