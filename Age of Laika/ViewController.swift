//
//  ViewController.swift
//  Age of Laika
//
//  Created by Mauro Consiglio on 25/10/14.
//  Copyright (c) 2014 Mauro Consiglio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton)
    {
        let yearsFromTextField = enterHumanYearsTextField.text.toInt()!
        let conversionConstant = 7
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(yearsFromTextField * conversionConstant) human years"
        enterHumanYearsTextField.resignFirstResponder()
        enterHumanYearsTextField.text = ""
    }
}

