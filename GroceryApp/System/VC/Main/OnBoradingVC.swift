//
//  SplashScreenVC.swift
//  GroceryApp
//
//  Created by Bansi on 03/07/25.
//

import UIKit

struct Introduction {
    var title: String
    var paragraph: String
    var imgArr: String
    
    init(title: String, paragraph: String, imgArr: String) {
        self.title = title
        self.paragraph = paragraph
        self.imgArr = imgArr
    }
}

class OnBoradingVC: UIViewController {

    @IBOutlet weak var lblHeading: UILabel!
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var lblParagraph: UILabel!
    @IBOutlet weak var imgSplash: UIImageView!
    @IBOutlet weak var page_Instruction: UIPageControl!
    @IBOutlet weak var paragraphTopConstraint: NSLayoutConstraint!
    
    var currentPage = 0
    var intro: [Introduction] = [
        Introduction(title: "Welcome to", paragraph: "Get fresh groceries delivered at your doorstep — easy, fast, and affordable with Big Cart.", imgArr: "Splash1"),
        Introduction(title: "Buy Quality Dairy Products", paragraph: "From milk to cheese, we deliver the best quality dairy products every day.", imgArr: "Splash2"),
        Introduction(title: "Buy Premium Quality Fruits", paragraph: "Enjoy farm-fresh, handpicked fruits for your healthy lifestyle.", imgArr: "Splash3"),
        Introduction(title: "Get Discounts On All Products", paragraph: "Save more on every order — exciting deals on all grocery items.", imgArr: "Splash4")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        user.set(false, forKey: "IsFirstTime")
        
        self.page_Instruction.numberOfPages = intro.count
        updateUI()
    }
    
    func updateUI() {
        let data = self.intro[self.currentPage]
        self.lblHeading.text = data.title
        self.lblParagraph.text = data.paragraph
        self.imgSplash.image = UIImage(named: data.imgArr)
        self.page_Instruction.currentPage = self.currentPage
        if self.currentPage == 0 {
            self.imgLogo.isHidden = false
            self.paragraphTopConstraint.constant = 16 // adjust as needed
        } else {
            self.imgLogo.isHidden = true
            self.paragraphTopConstraint.constant = -40 // move paragraph up
        }
        
    }

    @IBAction func ClickOnStarted(_ sender: Any) {
        if self.currentPage < self.intro.count - 1 {
            self.currentPage += 1
            updateUI()
        }  else {
            let welcomeVC = UIStoryboard(name: "Signup", bundle: nil).instantiateViewController(identifier: "WelcomeVC")
            self.navigationController?.pushViewController(welcomeVC, animated: true)
        }
    }
    

}
