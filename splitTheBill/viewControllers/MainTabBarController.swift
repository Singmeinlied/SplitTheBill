//
//  MainTabBarController.swift
//  splitTheBill
//
//  Created by Abai Kush on 7/1/24.
//

import UIKit

class MainTabBarController: UITabBarController, UITabBarControllerDelegate{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        setupTabBarAppearrance()
        setupViewControllers()
    }
    
    private func setupTabBarAppearrance(){
        self.tabBar.isTranslucent = true
        self.tabBar.backgroundColor = .white
        self.tabBar.tintColor = UIColor(red: 0.796, green: 0.667, blue: 0.796, alpha: 1)
        self.tabBar.unselectedItemTintColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
        self.selectedIndex = 0
    }
    
    func setupViewControllers(){
        self.setViewControllers([
            setupCurrentViewController(.equally),
            setupCurrentViewController(.separately)
        ], animated: false)
    }
    
    func setupCurrentViewController(_ viewControllerType: ViewControllerType) -> UIViewController{
        
        let vc = viewControllerType.viewController
        vc.tabBarItem.image = viewControllerType.unselectedImage
        vc.tabBarItem.selectedImage = viewControllerType.selectedImage
        vc.tabBarItem.title = viewControllerType.title
        
        return vc
    }
}
