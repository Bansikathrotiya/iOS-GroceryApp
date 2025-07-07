//
//  FavouriteVC.swift
//  GroceryApp
//
//  Created by Bansi on 04/07/25.
//

import UIKit

struct Fav {
    var imgProduct: String
    var productName: String
    
    init(imgProduct: String, productName: String) {
        self.imgProduct = imgProduct
        self.productName = productName
    }
}

class FavouriteVC: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var tableview: UITableView!
    
    // MARK: - Variable
    var favInfo: [Fav] = [
        Fav(imgProduct: "Peach", productName: "Fresh Peach"),
        Fav(imgProduct: "Avocado", productName: "Avocado"),
        Fav(imgProduct: "Pineapple", productName: "Pineapple"),
        Fav(imgProduct: "Grapes", productName: "Black Grapes"),
        Fav(imgProduct: "Pomegranate", productName: "Pomegranate"),
        Fav(imgProduct: "Broccoli", productName: "Fresh Broccoli")
    ]
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        configureTableView()
    }

}

// MARK: - UITableView
extension FavouriteVC : UITableViewDataSource, UITableViewDelegate {
    
    func configureTableView() {
        self.tableview.dataSource = self
        self.tableview.delegate = self
        self.tableview.register(UINib(nibName: "FavouriteTableviewCell", bundle: nil), forCellReuseIdentifier: "FavouriteTableviewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableview.dequeueReusableCell(withIdentifier: "FavouriteTableviewCell") as! FavouriteTableviewCell
        cell.imgFav.image = UIImage(named: self.favInfo[indexPath.row].imgProduct)
        cell.lblFav.text = self.favInfo[indexPath.row].productName
        return cell
    }
}
