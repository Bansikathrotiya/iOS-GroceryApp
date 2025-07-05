//
//  ViewController.swift
//  GroceryApp
//
//  Created by Bansi on 03/07/25.
//

import UIKit

var user = UserDefaults.standard

class SplashVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            
            if user.bool(forKey: "IsFirstTime") {
                let tabbarVC = UIStoryboard(name: "TabBar", bundle: nil).instantiateViewController(withIdentifier: "TabBarVC")
                self.navigationController?.setViewControllers([tabbarVC], animated: true)
            } else {
                let onboardingVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OnBoradingVC")
                self.navigationController?.setViewControllers([onboardingVC], animated: true)
            }
        }
    }


}

