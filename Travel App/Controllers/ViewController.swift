//
//  ViewController.swift
//  Travel App
//
//  Created by Sandeep Reddy on 31/08/24.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) {  authResult, error in
                //new code here
                //this is the travel app code
                

                if let e = error {
                    print(e)
                } else {
                    self.performSegue(withIdentifier: "LoginSuccess", sender: self)
                }
                    
                }
    
            }
        }
        
    }

