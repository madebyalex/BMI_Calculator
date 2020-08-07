//
//  ViewController.swift
//  BMI_Calculator
//
//  Created by Alexander on 07.08.2020.
//  Copyright © 2020 Alexander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightValue.text = String(format: "%.2f", sender.value)
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightValue.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = Int(weight / pow(height, 2))  // Using a "power" / pow() function
        print (bmi)
    }
    
    
}

