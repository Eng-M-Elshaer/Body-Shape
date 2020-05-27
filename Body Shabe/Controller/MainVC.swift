//
//  ViewController.swift
//  Body Shabe
//
//  Created by Mohamed Elshaer on 10/30/17.
//  Copyright © 2017 Mohamed Elshaer. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private func isValid() -> Bool {
        guard heightTextField.text != "" else {
            self.showAlert(title: "Error", message: "Plase Enter Your Height")
            return false
        }
        guard weightTextField.text != "" else {
            self.showAlert(title: "Error", message: "Plase Enter Your Weight")
            return false
        }
        return true
    }
    
    @IBAction func submitBtnPressed(_ sender: UIButton) {
        if isValid() {
            let height = Int(heightTextField.text!)! - 100
            let weight = Int(weightTextField.text!)!
            if height == weight {
                self.showAlert(title: "Result", message: "Keep Going .... Your Perfect Shape")
            } else if height < weight {
                self.showAlert(title: "Result", message: "Eat Less .... Your Fat")
            } else {
                self.showAlert(title: "Result", message: "Eat More .... Your Thin")
            }
        }
    }
}

