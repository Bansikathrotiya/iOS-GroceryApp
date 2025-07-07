//
//  featuredProductsCollectionViewCell.swift
//  GroceryApp
//
//  Created by Bansi on 04/07/25.
//

import UIKit

class featuredProductsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgFeaturedProducts: UIImageView!
    @IBOutlet weak var btnFavourite: UIButton!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblProductName: UILabel!
    @IBOutlet weak var lblQuantity: UILabel!
    @IBOutlet weak var btnCart: UIButton!
    @IBOutlet weak var btnMinus: UIButton!
    @IBOutlet weak var lblCartCount: UILabel!
    @IBOutlet weak var btnPlus: UIButton!
    @IBOutlet weak var stackStepper: UIStackView!
    
    var count = 0 {
        didSet {
            self.lblCartCount.text = "\(count)"
            self.stackStepper.isHidden = (self.count == 0)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.count = 0
        self.stackStepper.isHidden = true
    }
    
    @IBAction func clickOnFavourite(_ sender: UIButton) {
        var isFav: Bool = false
        isFav.toggle()
        self.btnFavourite.setImage(UIImage(systemName: isFav ? "heart.fill" : "heart"), for: .normal)
    }
    
    @IBAction func clickOnCart(_ sender: Any) {
        self.btnCart.isHidden = true
        self.count += 1
    }
    
    @IBAction func clickOnMinus(_ sender: Any) {
        if self.count > 1 {
            self.count -= 1
        } else {
            self.count = 0
            self.btnCart.isHidden = false   
        }
    }
    
    @IBAction func clickOnPlus(_ sender: Any) {
        self.count += 1
    }
    
}
