//
//  VerifyNumberVC.swift
//  GroceryApp
//
//  Created by Bansi on 04/07/25.
//

import UIKit

class VerifyNumberVC: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var imgCountry: UIImageView!
    @IBOutlet weak var lblCountryName: UILabel!
    @IBOutlet weak var btnDown: UIImageView!
    @IBOutlet weak var lblTimer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    @IBAction func clickOnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickOnNext(_ sender: Any) {
        let otpVC = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: "OtpVC")
        self.navigationController?.pushViewController(otpVC, animated: true)
    }
    
}
