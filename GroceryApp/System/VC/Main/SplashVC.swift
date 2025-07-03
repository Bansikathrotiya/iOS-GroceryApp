//
//  ViewController.swift
//  GroceryApp
//
//  Created by Bansi on 03/07/25.
//

import UIKit

class SplashVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            let onBoradingVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "OnBoradingVC") as! OnBoradingVC
            self.navigationController?.pushViewController(onBoradingVC, animated: true)
        }
    }


}

