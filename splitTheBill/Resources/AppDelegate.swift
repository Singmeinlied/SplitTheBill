//
//  AppDelegate.swift
//  splitTheBill
//
//  Created by Abai Kush on 7/1/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    let mainController = mainViewController()
    
    let navController = UINavigationController(rootViewController: MainTabBarController())
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow (frame: UIScreen.main.bounds)
        self.window = window
        
        
        window.rootViewController = navController
        
        window.makeKeyAndVisible()
        return true
    }
}
