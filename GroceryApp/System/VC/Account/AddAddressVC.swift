//
//  AddAddressVC.swift
//  GroceryApp
//
//  Created by Bansi on 08/07/25.
//

import UIKit

class AddAddressVC: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtZipcode: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtCountry: UITextField!
    
    // MARK: - Closure to send data back
    var onAddressAdded: ((AddressDetails) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    @IBAction func clickOnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickOnSave(_ sender: Any) {
        let newAddress = AddressDetails(
            name: self.txtName.text ?? "",
            address: self.txtAddress.text ?? "",
            city: self.txtCity.text ?? "",
            zipcode: self.txtZipcode.text ?? "",
            country: self.txtCountry.text ?? "",
            phone: self.txtNumber.text ?? ""
        )
        self.onAddressAdded?(newAddress)
        self.navigationController?.popViewController(animated: true)
    }

}
