//
//  SignupVC.swift
//  GroceryApp
//
//  Created by Bansi on 03/07/25.
//

import UIKit

class SignupVC: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    @IBAction func clickOnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickOnSignup(_ sender: Any) {
        let email = self.txtEmail.text ?? ""
        let phone = self.txtPhone.text ?? ""
        let password = self.txtPassword.text ?? ""
        
        if email.isEmpty || phone.isEmpty || password.isEmpty {
            showAlert(title: "Missing Information", message: "Please fill in all fields.")
        } else if password.count < 8 {
            showAlert(title: "Weak Password", message: "Password must be at least 8 characters.")
        } else if phone.count != 10 {
            showAlert(title: "Invalid Number", message: "Please enter a valid 10-digit mobile number.")
        } else {
            let tabbarVC = UIStoryboard(name: "TabBar", bundle: nil).instantiateViewController(withIdentifier: "TabBarVC")
            self.navigationController?.pushViewController(tabbarVC, animated: true)
        }
    }
    
    @IBAction func clickOnLogin(_ sender: Any) {
        let loginVC = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
    
}

extension SignupVC {
    
    // MARK: - Alert
    func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let clickOnOk = UIAlertAction(title: "OK", style: .default)
        alert.addAction(clickOnOk)
        self.present(alert, animated: true)
    }
    
}
