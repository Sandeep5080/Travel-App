//
//  SignUpViewController.swift
//  Travel App
//
//  Created by Sandeep Reddy on 31/08/24.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func siginUpPressed(_ sender: Any) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: "LoginView", sender: self)
                }
            }
        }
        
    }
}
