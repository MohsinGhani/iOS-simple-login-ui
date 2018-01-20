//
//  dashboardVC.swift
//  login-page-ui
//
//  Created by Mohsin on 20/01/2018.
//  Copyright © 2018 Mohsin. All rights reserved.
//

import UIKit
import FirebaseAuth
class dashboardVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func logout(_ sender: Any) {
        do{
         try Auth.auth().signOut()
            performSegue(withIdentifier: "gotoLogin", sender: self)
        } catch{
            print("error occurred in sign out")
        }
    }   


}
