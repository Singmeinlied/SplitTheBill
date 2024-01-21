//
//  viewControllerType.swift
//  splitTheBill
//
//  Created by Abai Kush on 7/1/24.
//

import UIKit

enum ViewControllerType{
    
    case equally
    case separately
    
    var viewController: UIViewController{
        switch self {
        case .equally:
            return UINavigationController(rootViewController: mainViewController())
        case .separately:
            return UINavigationController(rootViewController: secondViewController())
        }
    }
    
    
    var selectedImage: UIImage{
        switch self {
        case .equally:
            return UIImage(named: "Поровну")?.withTintColor(UIColor(red: 0.501, green: 0.276, blue: 0.642, alpha: 1)) ?? UIImage()
        case .separately:
            return UIImage(named: "По отдельности")?.withTintColor(UIColor(red: 0.501, green: 0.276, blue: 0.642, alpha: 1)) ?? UIImage()
        }
    }
    
    var unselectedImage: UIImage{
        switch self {
        case .equally:
            return UIImage(named: "Поровну")?.withTintColor(UIColor(red: 0.56, green: 0.541, blue: 0.729, alpha: 1)) ?? UIImage()
        case .separately:
            return UIImage(named: "По отдельности")?.withTintColor(UIColor(red: 0.56, green: 0.541, blue: 0.729, alpha: 1)) ?? UIImage()
        }
    }
    
    var title: String{
        switch self {
        
        case .equally:
            return "Поровну"
        case .separately:
            return "По отдельности"
        }
    }
}

