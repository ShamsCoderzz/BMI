//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Muhammad Shams on 25/02/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultText: UILabel!
    var result : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
       // print("\(result) Hellow Jani")
        
        resultText?.text = "\(result) Hellow"


        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
