//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var weightText: UILabel!
    @IBOutlet weak var height: UISlider!
    var calculatorModel = CalculatorBrain()
    
    @IBOutlet weak var weight: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func height(_ sender: UISlider) {
    let height = String(format: "%.1f", sender.value)
    heightText.text = "\(height)M"
        
    }
    
    @IBAction func weight(_ sender: UISlider) {
    let weight = String(format: "%.0f", sender.value)
    weightText.text = "\(weight)KG"

    }
    
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        calculatorModel.calculateBMI(height: height.value, weight: weight.value)
        self.performSegue(withIdentifier: "resultViewController", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultViewController" {
            let result  = segue.destination as! ResultViewController
            result.result = calculatorModel.getBMIValue()
            result.advice = calculatorModel.getAdvice()
            result.color = calculatorModel.getColor()

        }
    }
    
}

