//
//  ResultsVC.swift
//  BMI Calculator
//
//  Created by Clayville on 29/9/2022.
//

import UIKit

class ResultsVC: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var image: UIImage?
    
    @IBOutlet var recommendationIV: UIImageView!
    @IBOutlet var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adviceLabel.text = advice
        recommendationIV.image = image

    }

    @IBAction func recalculateBtnPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true)

    }

}
