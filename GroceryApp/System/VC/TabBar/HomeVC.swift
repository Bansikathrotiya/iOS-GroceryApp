//
//  HomeVC.swift
//  GroceryApp
//
//  Created by Bansi on 04/07/25.
//

import UIKit

struct Categories {
    var imgCat: String
    var titleCat: String
    
    init(imgCat: String, titleCat: String) {
        self.imgCat = imgCat
        self.titleCat = titleCat
    }
}

struct FeaturedProducts {
    var imgfeaturedProducts: String
    var price: String
    var product: String
    var quantity: String
    
    init(imgfeaturedProducts: String, price: String, product: String, quantity: String) {
        self.imgfeaturedProducts = imgfeaturedProducts
        self.price = price
        self.product = product
        self.quantity = quantity
    }
}

class HomeVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var imgPoster: UIImageView!
    @IBOutlet weak var page_Control: UIPageControl!
    @IBOutlet weak var categoriesCollectionview: UICollectionView!
    @IBOutlet weak var featuredProductsCollectionview: UICollectionView!
    @IBOutlet weak var featuredCollectionHeight: NSLayoutConstraint!
    
    var catInfo: [Categories] = [
        Categories(imgCat: "Vegetables", titleCat: "Vegetables"),
        Categories(imgCat: "Fruits", titleCat: "Fruits"),
        Categories(imgCat: "Beverages", titleCat: "Beverages"),
        Categories(imgCat: "Grocery", titleCat: "Grocery"),
        Categories(imgCat: "Edible_oil", titleCat: "Edible oil"),
        Categories(imgCat: "Household", titleCat: "Household"),
        Categories(imgCat: "Babycare", titleCat: "Babycare")
    ]
    
    var feaInfo: [FeaturedProducts] = [
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
        
        self.categoriesCollectionview.delegate = self
        self.categoriesCollectionview.dataSource = self
        self.categoriesCollectionview.register(UINib(nibName: "CategoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoriesCollectionViewCell")
        
        self.featuredProductsCollectionview.delegate = self
        self.featuredProductsCollectionview.dataSource = self
        self.featuredProductsCollectionview.register(UINib(nibName: "featuredProductsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "featuredProductsCollectionViewCell")
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let itemsPerRow: CGFloat = 2
        let spacing: CGFloat = 10
        let width = featuredProductsCollectionview.frame.width
        let itemHeight = (width / itemsPerRow) - 5
        let rows = ceil(CGFloat(feaInfo.count) / itemsPerRow)
        let totalHeight = (rows * itemHeight) + ((rows - 1) * spacing)

        featuredCollectionHeight.constant = totalHeight
        view.layoutIfNeeded()
    }

    

    @IBAction func clickOnCategories(_ sender: Any) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.categoriesCollectionview {
            return self.catInfo.count
        } else {
            return self.feaInfo.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.categoriesCollectionview {
            let catCell = categoriesCollectionview.dequeueReusableCell(withReuseIdentifier: "CategoriesCollectionViewCell", for: indexPath) as! CategoriesCollectionViewCell
            catCell.imgCategories.image = UIImage(named: self.catInfo[indexPath.row].imgCat)
            catCell.lblCategories.text = self.catInfo[indexPath.row].titleCat
            return catCell
        } else {
            let feaCell = featuredProductsCollectionview.dequeueReusableCell(withReuseIdentifier: "featuredProductsCollectionViewCell", for: indexPath) as! featuredProductsCollectionViewCell
            feaCell.imgFeaturedProducts.image = UIImage(named: self.feaInfo[indexPath.row].imgfeaturedProducts)
            feaCell.lblPrice.text = self.feaInfo[indexPath.row].price
            feaCell.lblProductName.text = self.feaInfo[indexPath.row].product
            feaCell.lblQuantity.text = self.feaInfo[indexPath.row].quantity
            return feaCell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.categoriesCollectionview {
            return CGSize(width: (self.categoriesCollectionview.frame.width / 3.5) - 5, height: (self.categoriesCollectionview.frame.width / 3.5) - 5)
        } else {
            return CGSize(width: (self.featuredProductsCollectionview.frame.width / 2) - 5, height: (self.featuredProductsCollectionview.frame.width / 2) - 5)
        }
    }
    
    @IBAction func clickOnFeaturedProducts(_ sender: Any) {
        
    }
    
}
