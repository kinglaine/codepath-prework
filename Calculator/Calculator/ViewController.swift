//
//  ViewController.swift
//  Calculator
//
//  Created by Killer Bean on 8/23/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var NavBar: UINavigationItem!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var tipLabel1: UILabel!
    @IBOutlet weak var totalLabel1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //self.title = "Tip Calculator"
        billAmountTextField.addTarget(self, action: #selector(ViewController.calculateTip(_:)), for: UIControl.Event.editingChanged)
        let settings = SettingsViewController()
        
        let DarkTheme = settings.defaults.bool(forKey: "state")
        if(DarkTheme == true){
            view.backgroundColor = .black
            billLabel.textColor = .white
            tipLabel1.textColor =  .white
            tipAmountLabel.textColor = .white
            totalLabel.textColor = .white
            totalLabel1.textColor = .white
            tipControl.backgroundColor = .white
            tipControl.selectedSegmentTintColor = .blue
        }else {
            view.backgroundColor = .white
        }
        
        
    }
    
    @IBAction func calculateTip(_ sender: UILabel) {
        // Get bill amount from text field input
        let bill = Double (billAmountTextField.text!) ?? 0
        
        // Get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update Tip Amount label
        tipAmountLabel.text = String (format: "$%.2f", tip)
        // update Total Amount
        totalLabel.text = String (format: "$%.2f",total)
    }
    
    
    
    
    

    
    

}

