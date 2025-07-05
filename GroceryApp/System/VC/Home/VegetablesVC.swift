//
//  VegetablesVC.swift
//  GroceryApp
//
//  Created by Bansi on 05/07/25.
//

import UIKit

class VegetablesVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var vegCollectionview: UICollectionView!
    
    var feaInfo: [FeaturedProducts] = [ // homevc - FeaturedProducts structure
        FeaturedProducts(imgfeaturedProducts: "Peach", price: "$8.00", product: "Fresh Peach", quantity: "dozen"),
        FeaturedProducts(imgfeaturedProducts: "Avocado", price: "$7.00", product: "Avocado", quantity: "2.0 lbs"),
        FeaturedProducts(imgfeaturedProducts: "Pineapple", price: "$9.90", product: "Pineapple", quantity: "1.50 lbs"),
        FeaturedProducts(imgfeaturedProducts: "Grapes", price: "$7.05", product: "Black Grapes", quantity: "5.0 lbs"),
        FeaturedProducts(imgfeaturedProducts: "Pomegranate", price: "$2.09", product: "Pomegranate", quantity: "1.50 lbs"),
        FeaturedProducts(imgfeaturedProducts: "Broccoli", price: "$3.00", product: "Fresh Broccoli", quantity: "1 kg")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.vegCollectionview.dataSource = self
        self.vegCollectionview.delegate = self
        self.vegCollectionview.register(UINib(nibName: "featuredProductsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "featuredProductsCollectionViewCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.feaInfo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let feaCell = vegCollectionview.dequeueReusableCell(withReuseIdentifier: "featuredProductsCollectionViewCell", for: indexPath) as! featuredProductsCollectionViewCell
        feaCell.imgFeaturedProducts.image = UIImage(named: self.feaInfo[indexPath.row].imgfeaturedProducts)
        feaCell.lblPrice.text = self.feaInfo[indexPath.row].price
        feaCell.lblProductName.text = self.feaInfo[indexPath.row].product
        feaCell.lblQuantity.text = self.feaInfo[indexPath.row].quantity
        return feaCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow: CGFloat = 2
        let spacing: CGFloat = 10
        let totalSpacing = spacing * (itemsPerRow - 1)
        let width = (self.vegCollectionview.frame.width - totalSpacing) / itemsPerRow
        let height = width + 70  // enough for image, price, name, quantity, and button
        return CGSize(width: width, height: height)
    }

    @IBAction func clickOnFilter(_ sender: Any) {
        
    }
    
    @IBAction func clickOnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
