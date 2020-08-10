//
//  CalculatorBrain.swift
//  BMI_Calculator
//
//  Created by Alexander on 09.08.2020.
//  Copyright © 2020 Alexander. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiToDecimal = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiToDecimal
    }
    
    func getAdvice() -> String {
        let adviceText = bmi?.advice ?? "Nothing to advice"
        return adviceText
    }
    
    func getColor() -> UIColor {
        let colorValue = bmi?.color ?? #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        return colorValue
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more snacks!", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        } else if bmiValue >= 18.5 && bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat more vegetables!", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        }
        
//
    }
}
