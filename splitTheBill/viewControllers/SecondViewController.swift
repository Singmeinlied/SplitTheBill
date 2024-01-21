//
//  SecondViewController.swift
//  splitTheBill
//
//  Created by Abai Kush on 7/1/24.
//


import UIKit
import SnapKit


class secondViewController: BaseVC{
    
    private lazy var bgImage: UIImageView = {
        let bg = UIImageView()
        bg.image = UIImage(named: "BG")
        bg.contentMode = .scaleAspectFill
        
        return bg
    }()
    
    private lazy var mainLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        //        label.font = .systemFont(ofSize: 40, weight: .bold)
        label.font = UIFont(name: "Neucha", size: 60)
        label.numberOfLines = 2
        label.text = "Делим счет:"
        label.textColor = UIColor.black
        
        /*
        //  Для поиска шрифта:
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames (forFamilyName: family)
            print("Family: \(family) Font names: \(names)")
        }
        */
        return label
    }()
    
    private lazy var numberOfPeople: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont(name: "Neucha", size: 20)
        label.text = "Введите количество человек:"
        label.textColor = UIColor.black
        
        return label
    }()
    
    private lazy var peopleTF: UITextField = {
        let people = UITextField()
        people.backgroundColor = .white
        people.placeholder = "На сколько делим?"
        people.font = UIFont(name: "Neucha", size: 14)
        people.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        people.borderStyle = .roundedRect
        //        people.delegate = self
        
        people.setLeftPaddingPoints(computedHeight(4))
        
        return people
    }()
    
    override func setupValues() {
        super.setupValues()
    }
    
    override func setupViews() {
        super.setupViews()
        view.addSubview(bgImage)
        view.addSubview(mainLabel)
        view.addSubview(numberOfPeople)
        view.addSubview(peopleTF)
        
    }
    
    override func setupConstrains() {
        super.setupConstrains()
        
        bgImage.snp.makeConstraints{
            $0.top.bottom.equalToSuperview()
            $0.leading.trailing.equalToSuperview()
        }
        
        mainLabel.snp.makeConstraints{
            $0.top.equalToSuperview().offset(computedHeight(60))
            $0.leading.trailing.equalToSuperview().offset(computedWidth(16))
        }
        
        numberOfPeople.snp.makeConstraints(){
            $0.top.equalTo(mainLabel.snp.bottom).offset(computedHeight(20))
            $0.leading.equalToSuperview().offset(computedWidth(20))
        }
        
        peopleTF.snp.makeConstraints{
            $0.top.equalTo(numberOfPeople.snp.bottom).offset(computedHeight(4))
            $0.leading.trailing.equalToSuperview().inset(computedWidth(16))
        }
    }
}
