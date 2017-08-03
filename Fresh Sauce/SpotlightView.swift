//
//  SpotlightView.swift
//  Fresh Sauce
//
//  Created by Swathy Sudarsanan on 23/07/17.
//  Copyright © 2017 BladeSilver. All rights reserved.
//

import UIKit

class SpotlightView: UIView,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    let cellIdentifier = "Spotlight CollectionView Cell Identifier"

    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 7
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cellIdentifier, for: indexPath) as! SpotlightCell
        cell.backgroundColor  = UIColor.red
        return cell;
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
<<<<<<< HEAD
        

        let width  = self.frame.size.width;
        
        return CGSize(width: width, height: 180)
=======
        return CGSize(width: collectionView.frame.width, height: 180)
>>>>>>> e730120df9a2709d600a1a5e2dd0e5914aae335b
    }
    
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
//        let screenSize = UIScreen.main.bounds
//        return CGSize(width: screenSize.width, height: 180)
//    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat{
        return 0
    }
    

}
