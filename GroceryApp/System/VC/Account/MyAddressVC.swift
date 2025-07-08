//
//  MyAddressVC.swift
//  GroceryApp
//
//  Created by Bansi on 08/07/25.
//

import UIKit

struct AddressDetails {
    var name: String
    var address: String
    var city: String
    var zipcode: String
    var country: String
    var phone: String
    
    init(name: String, address: String, city: String, zipcode: String, country: String, phone: String) {
        self.name = name
        self.address = address
        self.city = city
        self.zipcode = zipcode
        self.country = country
        self.phone = phone
    }
}


class MyAddressVC: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var tableview: UITableView!
    
    // MARK: - Variables
    var addressList: [AddressDetails] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tableview.register(UINib(nibName: "MyAddressTableViewCell", bundle: nil), forCellReuseIdentifier: "MyAddressTableViewCell")
        configureTables()
    }
    
    // MARK: - Actions
    @IBAction func clickOnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickOnAdd(_ sender: Any) {
        let addAddressVC = UIStoryboard(name: "Account", bundle: nil).instantiateViewController(withIdentifier: "AddAddressVC") as! AddAddressVC
        addAddressVC.onAddressAdded = { [weak self] newAddress in
            self?.addressList.append(newAddress)
            self?.tableview.reloadData()
        }
        self.navigationController?.pushViewController(addAddressVC, animated: true)
    }
    
    @IBAction func clickOnSave(_ sender: Any) {
        
    }
    
}

// MARK: - TableView
extension MyAddressVC : UITableViewDataSource, UITableViewDelegate {
    
    func configureTables() {
        self.tableview.dataSource = self
        self.tableview.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return addressList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableview.dequeueReusableCell(withIdentifier: "MyAddressTableViewCell", for: indexPath) as! MyAddressTableViewCell
        let address = addressList[indexPath.row]
        cell.lblName.text = address.name
        cell.lblAddress.text = "\(address.address), \(address.city), \(address.country) \(address.zipcode)"
        cell.lblNumber.text = address.phone
        return cell
    }
    
}
