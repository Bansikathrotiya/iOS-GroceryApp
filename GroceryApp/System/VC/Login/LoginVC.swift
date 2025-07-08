//
//  LoginVC.swift
//  GroceryApp
//
//  Created by Bansi on 04/07/25.
//

import UIKit

class LoginVC: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    @IBAction func clickOnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickOnForgotPassword(_ sender: Any) {
        let forgotPasswordVC = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: "ForgotPasswordVC") as! ForgotPasswordVC
        self.navigationController?.pushViewController(forgotPasswordVC, animated: true)
    }
    
    @IBAction func clickOnLogin(_ sender: Any) {
        let email = self.txtEmail.text ?? ""
        let password = self.txtPassword.text ?? ""
        
        if email.isEmpty || password.isEmpty {
            showAlert(title: "Missing Information", message: "Please fill in all fields.")
        } else if password.count < 8 {
            showAlert(title: "Weak Password", message: "Password must be at least 8 characters.")
        } else if password == "12341234" {
            let tabbarVC = UIStoryboard(name: "TabBar", bundle: nil).instantiateViewController(withIdentifier: "TabBarVC") as! TabBarVC
            self.navigationController?.pushViewController(tabbarVC, animated: true)
        }
    }
    
    @IBAction func clickOnSignup(_ sender: Any) {
        let signupVC = UIStoryboard(name: "Signup", bundle: nil).instantiateViewController(withIdentifier: "SignupVC") as! SignupVC
        self.navigationController?.pushViewController(signupVC, animated: true)
    }
    
}

extension LoginVC {
    
    // MARK: - Alert
    func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let clickOnOk = UIAlertAction(title: "OK", style: .default)
        alert.addAction(clickOnOk)
        self.present(alert, animated: true)
    }
    
}
