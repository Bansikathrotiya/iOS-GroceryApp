//
//  OtpVC.swift
//  GroceryApp
//
//  Created by Bansi on 04/07/25.
//

import UIKit

class OtpVC: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet var txtOTP: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    @IBAction func clickOnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickOnNext(_ sender: Any) {
        let tabbarVC = UIStoryboard(name: "TabBar", bundle: nil).instantiateViewController(withIdentifier: "TabBarVC") as! TabBarVC
        self.navigationController?.pushViewController(tabbarVC, animated: true)
    }
    
}
