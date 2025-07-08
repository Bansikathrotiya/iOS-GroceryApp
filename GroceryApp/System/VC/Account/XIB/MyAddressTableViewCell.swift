//
//  MyAddressTableViewCell.swift
//  GroceryApp
//
//  Created by Bansi on 08/07/25.
//

import UIKit

class MyAddressTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblNumber: UILabel!
    @IBOutlet weak var addressview: UIView!
    @IBOutlet weak var btnDown: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.addressview.isHidden = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func clickOnDown(_ sender: Any) {
        self.addressview.isHidden = false
    }
}
