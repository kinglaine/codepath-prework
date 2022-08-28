//
//  SettingsViewController.swift
//  Calculator
//
//  Created by Killer Bean on 8/24/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var tip1: UITextField!
    @IBOutlet weak var tip2: UITextField!
    @IBOutlet weak var tip3: UITextField!
    @IBOutlet weak var DarkModeLAbel: UILabel!
    @IBOutlet weak var tip1Label: UILabel!
    @IBOutlet weak var tip2Label: UILabel!
    @IBOutlet weak var tip3Label: UILabel!

    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let savedTheme = defaults.bool(forKey: "state")
        if(savedTheme == true){
            tip1Label.textColor = .white
            tip2Label.textColor = .white
            tip3Label.textColor = .white
            DarkModeLAbel.textColor = .white
            view.backgroundColor = .black
            toggle.setOn(true, animated: true)
        }else {
            tip1Label.textColor = .black
            tip2Label.textColor = .black
            tip3Label.textColor = .black
            DarkModeLAbel.textColor = .black
            view.backgroundColor = .white
        }
    }
    
    @IBAction func DarkModeSwitch(_ sender: UISwitch) {
        if sender.isOn{
            tip1Label.textColor = .white
            tip2Label.textColor = .white
            tip3Label.textColor = .white
            DarkModeLAbel.textColor = .white
            view.backgroundColor = .black
            defaults.set(true, forKey: "state")
        }else{
            tip1Label.textColor = .black
            tip2Label.textColor = .black
            tip3Label.textColor = .black
            DarkModeLAbel.textColor = .black
            view.backgroundColor = .white
            defaults.set(false, forKey: "state")
        }
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
