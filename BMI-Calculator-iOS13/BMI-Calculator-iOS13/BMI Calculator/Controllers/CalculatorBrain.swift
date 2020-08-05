//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Tiger Chiang on 8/4/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if(bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if(bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "Fit as a diddle", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.6606211662, green: 0, blue: 0.08430386335, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> String {
        // bmi ?? 0.0 means use bmi if not nil, otherwise use what is after
        // the ?? which would be 0.0
        // nil coalescing
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.6606211662, green: 0, blue: 0.08430386335, alpha: 1)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
}
