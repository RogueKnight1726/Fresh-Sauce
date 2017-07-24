//
//  PopularCell.swift
//  Fresh Sauce
//
//  Created by Swathy Sudarsanan on 23/07/17.
//  Copyright © 2017 BladeSilver. All rights reserved.
//

import UIKit

class PopularCell: UICollectionViewCell {
    @IBOutlet weak var popularImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.popularImage.layer.cornerRadius = 10
    }
}
