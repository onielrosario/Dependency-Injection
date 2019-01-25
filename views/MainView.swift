//
//  MainView.swift
//  DependencyInjection
//
//  Created by Oniel Rosario on 1/24/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import UIKit

protocol MainViewDelegate: AnyObject {
   func seguePressed()
}



class MainView: UIView {
    weak var mainViewDelegate: MainViewDelegate?
    
    lazy var mainButton: UIButton = {
        let button = UIButton()
        button.setTitle("segue", for: .normal)
        button.backgroundColor = .orange
        button.addTarget(self, action: #selector(seguePressed), for: .touchUpInside)
        return button
    }()
    
    @objc func seguePressed() {
        mainViewDelegate?.seguePressed()
    }
    
    

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(mainButton)
        backgroundColor = .white
        setConstrains()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstrains() {
        self.layer.cornerRadius = 5
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        mainButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true

    }
    
    
}
