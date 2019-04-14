//
//  ViewController.swift
//  loginScreen
//
//  Created by Fauzi Rizal on 14/04/19.
//  Copyright © 2019 Apple Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // to avoid SIGABRT haha
    
    
    @IBOutlet weak var backGround: UIImageView!
    @IBOutlet weak var logoSocialmedia: UILabel!
    @IBOutlet weak var loginInputStack: UIStackView!
    
    
    @IBOutlet weak var usernameLogin: UITextField!
    @IBOutlet weak var passwordLogin: UITextField!
    @IBOutlet weak var phoneNumberLogin: UITextField!
    
    @IBOutlet weak var resultView: UITextView!
    
    
    
    // clicked button enter
    @IBAction func clickedButton(_ sender: Any) {
        resultView.text = "Your username is: \(usernameLogin.text!)\nYour pass is: \(passwordLogin.text!)\nYour Phone Number is: \(phoneNumberLogin.text!)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameLogin.delegate = self
        passwordLogin.delegate = self
        phoneNumberLogin.delegate = self
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        phoneNumberLogin.resignFirstResponder()
    }


}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
}

