//
//  AboutmeVC.swift
//  GroceryApp
//
//  Created by Bansi on 05/07/25.
//

import UIKit

class AboutmeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    @IBAction func clickOnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func clickOnSave(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
