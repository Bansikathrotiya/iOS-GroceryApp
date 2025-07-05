//
//  WelcomeVC.swift
//  GroceryApp
//
//  Created by Bansi on 03/07/25.
//

import UIKit

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickOnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickOnSignup(_ sender: Any) {
        let signupVC = UIStoryboard(name: "Signup", bundle: nil).instantiateViewController(withIdentifier: "SignupVC")
        self.navigationController?.pushViewController(signupVC, animated: true)
    }
    
    @IBAction func clickOnLogin(_ sender: Any) {
        let loginVC = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: "LoginVC")
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
    
}
