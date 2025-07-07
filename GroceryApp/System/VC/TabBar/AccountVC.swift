//
//  AccountVC.swift
//  GroceryApp
//
//  Created by Bansi on 04/07/25.
//

import UIKit

class AccountVC: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    //MARK: - Outlets
    @IBOutlet weak var lblSignout: UILabel!
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblEmail: UILabel!
    
    //MARK: - Variables
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let signoutTap = UITapGestureRecognizer(target: self, action: #selector(showSignOut))
        self.lblSignout.isUserInteractionEnabled = true
        self.lblSignout.addGestureRecognizer(signoutTap)
        
        let imgTap = UITapGestureRecognizer(target: self, action: #selector(selectProfileImage))
        self.imgProfile.isUserInteractionEnabled = true
        self.imgProfile.addGestureRecognizer(imgTap)
    }
    
    //MARK: - ImagePicker
    @objc func selectProfileImage() {
        self.imagePicker.sourceType = .photoLibrary
        self.imagePicker.delegate = self
        self.imagePicker.allowsEditing = true
        self.present(self.imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.editedImage] ?? info[.originalImage] {
            if let imgData = image as? UIImage {
                self.imgProfile.image = imgData
                picker.dismiss(animated: true)
            }
        }
    }
    
    //MARK: - Sign Out Confirmation
    @objc func showSignOut() {
        let alert = UIAlertController(title: "Sign Out", message: "Are you sure you want to sign out?", preferredStyle: .alert)
        let clickOnCancel = UIAlertAction(title: "Cancel", style: .cancel)
        let clickOnSignout = UIAlertAction(title: "Sign Out", style: .destructive) { _ in
            let onboradingVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "OnBoradingVC")
            self.navigationController?.setViewControllers([onboradingVC], animated: true)
        }
        alert.addAction(clickOnCancel)
        alert.addAction(clickOnSignout)
        present(alert, animated: true)
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
