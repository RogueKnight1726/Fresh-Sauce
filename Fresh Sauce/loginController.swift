//
//  loginController.swift
//  Fresh Sauce
//
//  Created by Swathy Sudarsanan on 25/07/17.
//  Copyright © 2017 BladeSilver. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class loginController: UIViewController {

    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var usernameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func loginNow(_ sender: Any) {
        guard let email = usernameText.text, let password = passwordText.text
            else{
                print("Empty fields")
                return
        }
        Auth.auth().signIn(withEmail: email, password: password, completion: { (user, error) in
            if error != nil {
                print("Error occured \(String(describing: error))")
                return
            }
            self.performSegue(withIdentifier: "LoginSegue", sender: self)
            
        })

    }
}
