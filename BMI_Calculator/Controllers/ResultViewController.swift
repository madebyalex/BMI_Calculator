//
//  ResultViewController.swift
//  BMI_Calculator
//
//  Created by Alexander on 08.08.2020.
//  Copyright © 2020 Alexander. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .magenta
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        label.textColor = .white
        view.addSubview(label)
        
    }
}
