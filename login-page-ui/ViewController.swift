//
//  ViewController.swift
//  login-page-ui
//
//  Created by Mohsin on 19/01/2018.
//  Copyright © 2018 Mohsin. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func signIn(_ sender: Any) {
        if let email = emailField.text, let password = passwordField.text {
            Auth.auth().signIn(withEmail: email, password: password, completion: { user, error in
                if let firebaseErr = error {
                    print(firebaseErr.localizedDescription)
                    return
                }
                self.performSegue(withIdentifier: "gotoDashboard", sender: self)
            })
        }
    }

    @IBAction func signUp(_ sender: Any) {
        if let email = emailField.text, let password = passwordField.text {
            Auth.auth().createUser(withEmail: email, password: password, completion: { user, error in
                if let firebaseErr = error {
                    print(firebaseErr.localizedDescription)
                    return
                }
                print("successfully created account")
                self.emailField.text = ""
                self.passwordField.text = ""
            })
        }
    }
}

