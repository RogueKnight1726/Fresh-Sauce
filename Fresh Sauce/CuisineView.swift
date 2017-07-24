//
//  CuisineView.swift
//  Fresh Sauce
//
//  Created by Swathy Sudarsanan on 23/07/17.
//  Copyright © 2017 BladeSilver. All rights reserved.
//

import UIKit

class CuisineView: UIView,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource {

    let cuisineItems = [#imageLiteral(resourceName: "chinese"),#imageLiteral(resourceName: "japanese"),#imageLiteral(resourceName: "italian")]
    let cellIdentifier = "CuisineCellIdentifier"
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cellIdentifier, for: indexPath) as! CuisineCell
        cell.cuisineThumbnail.image = cuisineItems[indexPath.row]
        return cell;
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: 160, height: 160)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat{
        return 0
    }

}
