//
//  ForgotPasswordVC.swift
//  GroceryApp
//
//  Created by Bansi on 04/07/25.
//

import UIKit

class ForgotPasswordVC: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var txtEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    @IBAction func clickOnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickOnSendLink(_ sender: Any) {
        let verifynumberVC = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: "VerifyNumberVC") as! VerifyNumberVC
        self.navigationController?.pushViewController(verifynumberVC, animated: true)
    }
    
}
