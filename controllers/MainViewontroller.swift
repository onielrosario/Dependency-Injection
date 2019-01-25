//
//  MainViewontroller.swift
//  DependencyInjection
//
//  Created by Oniel Rosario on 1/24/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import UIKit


class MainViewController: UIViewController {
    let mainview = MainView()
    
    
    override func viewDidLoad() {
        self.view.addSubview(mainview)
        mainview.mainViewDelegate = self
    }
    
    
    
}

extension MainViewController: MainViewDelegate {
    func seguePressed() {
    }
    
    
}
