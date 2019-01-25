//
//  DetailViewcontroller.swift
//  DependencyInjection
//
//  Created by Oniel Rosario on 1/24/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import UIKit


class DetailViewcontroller: UIViewController {
    let detailView = DetailView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(detailView)
    }
    
    init(message: String) {
        super.init(nibName: nil, bundle: nil)
        detailView.textLabel.text = message
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
