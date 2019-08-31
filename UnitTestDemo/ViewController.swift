//
//  ViewController.swift
//  UnitTestDemo
//
//  Created by Abhishek Gupta on 25/07/19.
//  Copyright © 2019 Abhishek Gupta. All rights reserved.
//

import UIKit

let maxNumCharacters = 6

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textFieldUserName: UITextField!
    
    @IBOutlet var textFieldPassword: UITextField!
    
    @IBOutlet var btnLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginAction() {
        let userName = textFieldUserName.text!
        let password = textFieldPassword.text!
        print("UserName: \(userName) and Password: \(password)")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (textField.tag == 1){
            let currentCharacterCount = textField.text?.count ?? 0
            let newLength = currentCharacterCount + string.count - range.length
            return newLength <= maxNumCharacters
        }
        return true
       
    }


}

