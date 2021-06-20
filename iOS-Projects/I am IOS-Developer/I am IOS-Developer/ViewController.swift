//
//  ViewController.swift
//  I am IOS-Developer
//
//  Created by Дастан Махутов on 08.05.2021.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var countDaysLabel: UILabel!
    @IBOutlet weak var stepperLabel: UIStepper!
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        stepperLabel.value = Double(defaults.integer(forKey: "LastDay"))
        countDaysLabel.text = "Days:\(String(defaults.integer(forKey: "LastDay")))"
    }
    
   
    @IBAction func stepperAction(_ sender: UIStepper) {
        stepperLabel.minimumValue = 0
        stepperLabel.maximumValue = 365
        countDaysLabel.text = "Days:\(String(Int(sender.value)))"
        defaults.set(Int(sender.value), forKey: "LastDay")
        
    }
}


