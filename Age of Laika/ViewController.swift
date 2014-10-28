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
        dogYearsLabel.textColor = UIColor.redColor()
        enterHumanYearsTextField.resignFirstResponder()
        enterHumanYearsTextField.text = ""
    }
    
    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton)
    {
        let yearsFromTextField = enterHumanYearsTextField.text.toInt()
        
        if yearsFromTextField == nil {
            dogYearsLabel.hidden = false
            dogYearsLabel.text = "Please insert age in human years"
        }
        else if yearsFromTextField! <= 2 {
            dogYearsLabel.text = "\(Double(yearsFromTextField!) * 10.5) human years"
        }
        else {
            dogYearsLabel.text = "\((yearsFromTextField! - 2) * 4 + 21) human years"
        }
        dogYearsLabel.hidden = false
        dogYearsLabel.textColor = UIColor.greenColor()
        enterHumanYearsTextField.resignFirstResponder()
        enterHumanYearsTextField.text = ""
    }
}

