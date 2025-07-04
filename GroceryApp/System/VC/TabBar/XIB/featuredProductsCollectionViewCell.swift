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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func clickOnFavourite(_ sender: UIButton) {
        var isFav: Bool = false
        isFav.toggle()
        self.btnFavourite.setImage(UIImage(systemName: isFav ? "heart.fill" : "heart"), for: .normal)
    }
    
    @IBAction func clickOnCart(_ sender: Any) {
        
    }
}
