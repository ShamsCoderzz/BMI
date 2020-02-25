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
    
    @IBOutlet weak var weight: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func height(_ sender: UISlider) {
    let height = String(format: "%.2f", sender.value)
    heightText.text = "\(height)FT"
        
    }
    
    @IBAction func weight(_ sender: UISlider) {
    let weight = String(format: "%.0f", sender.value)
    weightText.text = "\(weight)KG"

    }
    
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        
        let mheight = height.value
        let mweight = weight.value
        
        let bmi = mweight / pow(mheight, 2)

        let result  = ResultViewController()
        
        
        result.result = String(bmi)
    
        
    }
    
}

