//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Tiger Chiang on 8/3/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
        
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    


}
