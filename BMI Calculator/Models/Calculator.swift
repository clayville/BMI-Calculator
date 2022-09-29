//
//  Calculator.swift
//  BMI Calculator
//
//  Created by Clayville on 29/9/2022.
//

import UIKit

struct Calculator {
    
    var bmi: BMI?
    
    // Calculates the BMI value
    func getBMIvalue() -> String{
        
        let roundedBMI = String(format: "%.1f", bmi?.value ?? 0.0)
        return roundedBMI
        
    }
    
    
    func getAdvice() -> String {
        
        return bmi?.advice ?? "There is no advice"
        
    }
    
    func getImage() -> UIImage {
        return bmi?.image ?? UIImage(named: "")!
    }
    
    
    mutating func calculateBMI(height: Float, weight: Float){
        
        let bmiValue = weight / pow(height, 2)
        
        switch bmiValue{
            
        case 0..<18.5:
            print("underweight")
            bmi = BMI(value: bmiValue, advice: "Eating food with more calories might help.", image: UIImage(named: "underweight"))
        case 18.5...24.9:
            print("Normal")
            bmi = BMI(value: bmiValue, advice: "You have a normal body weight.\nGreat Job!!!\n Maintain it by eating healthy and\n regular exercise", image: UIImage(named: "normal"))
        default:
            print("obese")
            bmi = BMI(value: bmiValue, advice: "Regular exercise\n and cutting down on\ncalories might help", image: UIImage(named: "obese"))
        }
    }
    
}
