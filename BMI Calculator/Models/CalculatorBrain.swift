//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ezagor on 7.04.2023.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float)  {
       let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Zargana", color: UIColor.blue)
            
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Maşallah!", color: UIColor.green)
            
        }else{
            bmi = BMI(value: bmiValue, advice: "Panda panda panda", color: UIColor.red)
        }
        
        
        //        bmiValue = String(format: "%.1f", bmi)
    }
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Tavsiye yok"
    }
    
    func getColor() -> UIColor {
        
        return bmi?.color ?? UIColor.white
        
    }
    
}




