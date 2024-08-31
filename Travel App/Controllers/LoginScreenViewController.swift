//
//  LoginScreenViewController.swift
//  Travel App
//
//  Created by Sandeep Reddy on 02/09/24.
//

import UIKit
import FirebaseAuth

class LoginScreenViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginOutPressed(_ sender: UIButton) {
        do {
          try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
    }
}
