//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Clayville on 27/9/2022.
//

import UIKit

class HomeVC: UIViewController {
    
    var calculator = Calculator()
    
    
    @IBOutlet var heightLabel: UILabel!
    
    
    @IBOutlet var heightSlider: UISlider!
    
    
    @IBOutlet var weightLabel: UILabel!
    
    
    @IBOutlet var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // MARK: - BUTTONS AND SLIDERS
    
    
    @IBAction func heightSliderMoved(_ sender: UISlider) {
        
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) m"
        
    }
    
    
    @IBAction func weightSliderMoved(_ sender: UISlider) {
        
        let weight = Int(sender.value)
        weightLabel.text = "\(weight) kg"
    }
    
    @IBAction func calculateBtnPressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let result = calculator.calculateBMI(height: height, weight: weight)
        
        performSegue(withIdentifier: "showResults", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResults"{
            
            let destinationVC = segue.destination as! ResultsVC
            destinationVC.bmiValue = calculator.getBMIvalue()
            destinationVC.advice = calculator.getAdvice()
            destinationVC.image = calculator.getImage()
        }
    }
    
}

