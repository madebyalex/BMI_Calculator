//
//  ResultViewController.swift
//  BMI_Calculator
//
//  Created by Alexander on 08.08.2020.
//  Copyright © 2020 Alexander. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: String?
    var adviceText: String?
    var colorValue: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = adviceText
        view.backgroundColor = colorValue
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
