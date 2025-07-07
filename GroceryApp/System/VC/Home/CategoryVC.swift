//
//  CategoryVC.swift
//  GroceryApp
//
//  Created by Bansi on 05/07/25.
//

import UIKit

class CategoryVC: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var catCollectionview: UICollectionView!
    
    // MARK: - Variables
    var catInfo: [Categories] = [ // homevc -  categories structure
        Categories(imgCat: "Vegetables", titleCat: "Vegetables"),
        Categories(imgCat: "Fruits", titleCat: "Fruits"),
        Categories(imgCat: "Beverages", titleCat: "Beverages"),
        Categories(imgCat: "Grocery", titleCat: "Grocery"),
        Categories(imgCat: "Edible_oil", titleCat: "Edible oil"),
        Categories(imgCat: "Household", titleCat: "Household"),
        Categories(imgCat: "Babycare", titleCat: "Babycare")
    ]
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        configureCollectionView()
        
    }
    
    // MARK: - Actions
    @IBAction func clickOnFilter(_ sender: Any) {
        
    }
    
    @IBAction func clickOnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
}

// MARK: - UICollectionView
extension CategoryVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func configureCollectionView() {
        self.catCollectionview.delegate = self
        self.catCollectionview.dataSource = self
        self.catCollectionview.register(UINib(nibName: "CategoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoriesCollectionViewCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.catInfo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let catCell = catCollectionview.dequeueReusableCell(withReuseIdentifier: "CategoriesCollectionViewCell", for: indexPath) as! CategoriesCollectionViewCell
        catCell.imgCategories.image = UIImage(named: self.catInfo[indexPath.row].imgCat)
        catCell.lblCategories.text = self.catInfo[indexPath.row].titleCat
        return catCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.catCollectionview.frame.width / 2) - 5, height: (self.catCollectionview.frame.width / 2) - 5)
    }
}
