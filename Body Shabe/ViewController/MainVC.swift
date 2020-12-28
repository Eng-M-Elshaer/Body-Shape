//
//  ViewController.swift
//  Body Shabe
//
//  Created by Mohamed Elshaer on 10/30/17.
//  Copyright © 2017 Mohamed Elshaer. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    //MARK:- Outlets
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    //MARK:- Lifecycle Mehtods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK:- Actions
    @IBAction func submitBtnTapped(_ sender: UIButton) {
        if isValid() {
            calculetWeight()
        }
    }
}

// MARK:- Private Method
extension MainVC {
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
    private func calculetWeight(){
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
