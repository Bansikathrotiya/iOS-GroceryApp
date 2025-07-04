//
//  FavouriteTableviewCell.swift
//  GroceryApp
//
//  Created by Bansi on 04/07/25.
//

import UIKit

class FavouriteTableviewCell: UITableViewCell {

    @IBOutlet weak var imgFav: UIImageView!
    @IBOutlet weak var lblFav: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
