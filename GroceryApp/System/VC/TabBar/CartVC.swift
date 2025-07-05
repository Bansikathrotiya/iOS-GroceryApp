//
//  CartVC.swift
//  GroceryApp
//
//  Created by Bansi on 04/07/25.
//

import UIKit

class CartVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tableview.dataSource = self
        self.tableview.delegate = self
        
        self.tableview.register(UINib(nibName: "CartTableviewCell", bundle: nil), forCellReuseIdentifier: "CartTableviewCell")
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableview.dequeueReusableCell(withIdentifier: "CartTableviewCell") as! CartTableviewCell
        
        return cell
    }

}
