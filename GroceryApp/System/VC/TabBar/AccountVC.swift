//
//  AccountVC.swift
//  GroceryApp
//
//  Created by Bansi on 04/07/25.
//

import UIKit

class AccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: - Actions
    @IBAction func clickOnAboutMe(_ sender: Any) {
        let aboutmeVC = UIStoryboard(name: "Account", bundle: nil).instantiateViewController(withIdentifier: "AboutmeVC")
        self.navigationController?.pushViewController(aboutmeVC, animated: true)
    }
    

    @IBAction func clickOnNotification(_ sender: Any) {
        let notificationVC = UIStoryboard(name: "Account", bundle: nil).instantiateViewController(withIdentifier: "NotificationVC")
        self.navigationController?.pushViewController(notificationVC, animated: true)
    }
    
}
