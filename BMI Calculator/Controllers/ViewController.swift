//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Ezagor on 25.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
     
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmiScore = weight / pow(height, 2)
        
        
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format:"%.1f",bmiScore)
        
        self.present(secondVC, animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var label: UILabel!
}

