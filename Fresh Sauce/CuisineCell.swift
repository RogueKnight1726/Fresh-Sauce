//
//  CuisineCell.swift
//  Fresh Sauce
//
//  Created by Swathy Sudarsanan on 23/07/17.
//  Copyright © 2017 BladeSilver. All rights reserved.
//

import UIKit

class CuisineCell: UICollectionViewCell {
    
    @IBOutlet weak var cuisineThumbnail: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.cuisineThumbnail.layer.borderColor = UIColor(r: 177, g: 192, b: 215, a: 0.4).cgColor
        self.cuisineThumbnail.layer.borderWidth = 1
        self.cuisineThumbnail.layer.cornerRadius = 10
    }
    
}
