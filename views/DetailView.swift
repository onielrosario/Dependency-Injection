//
//  DetailView.swift
//  DependencyInjection
//
//  Created by Oniel Rosario on 1/24/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import UIKit



class DetailView: UIView {
    
    lazy var textLabel: UILabel = {
       let label = UILabel()
        label.backgroundColor = .orange
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(textLabel)
        backgroundColor = .white
        setConstrains()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstrains() {
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    
    
    
    
    
    
    
    
    
}
