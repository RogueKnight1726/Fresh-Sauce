//
//  CuisineView.swift
//  Fresh Sauce
//
//  Created by Swathy Sudarsanan on 23/07/17.
//  Copyright © 2017 BladeSilver. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class CuisineView: UIView,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var cuisineColectionView: UICollectionView!

    var categoriesDictionary = [String:String]()
    let cellIdentifier = "CuisineCellIdentifier"
    var categoriesList : [Category] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.cuisineColectionView.isHidden = true
        self.cuisineColectionView.delegate = self
        self.cuisineColectionView.dataSource = self
        fetchCategories()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return self.categoriesList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cellIdentifier, for: indexPath) as! CuisineCell
        cell.category = self.categoriesList[indexPath.row]
        return cell;
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: 160, height: 160)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat{
        return 0
    }
    
    // Fatch Categories from Firebase
    func fetchCategories(){
        
        
        let ref = Database.database().reference(fromURL:  "https://fresh-sauce-32b62.firebaseio.com/")
        ref.child("Categories").observe(.childAdded, with: { (snapshot) in
            
            print(snapshot)
            if let dictionary = snapshot.value  as? [String: AnyObject]{
                let category = Category()
                category.id = snapshot.key
                category.setValuesForKeys(dictionary)
                self.categoriesList.append(category)
                print(self.categoriesList)
                DispatchQueue.main.async {
                    self.cuisineColectionView.isHidden = false
                    self.cuisineColectionView.reloadData()
                }
            }
            
            
        }, withCancel: nil)
    }


}
