//
//  BaseVC.swift
//  splitTheBill
//
//  Created by Abai Kush on 7/1/24.
//

import UIKit

class BaseVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstrains()
        setupValues()
    }
    
    func setupViews(){
        view.backgroundColor = UIColor(red: 0.965, green: 0.913, blue: 0.49, alpha: 1)
        
    }
    
    func setupConstrains(){
    }
    
    func setupValues(){
    }
}
