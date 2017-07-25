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
    @IBOutlet weak var categoryText: UILabel!
    
    var category: Category?{
        didSet{
            self.categoryText.text = category?.name
            setupBackdrop()
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.cuisineThumbnail.layer.borderColor = UIColor(r: 177, g: 192, b: 215, a: 0.4).cgColor
        self.cuisineThumbnail.layer.borderWidth = 1
        self.cuisineThumbnail.layer.cornerRadius = 10
    }
    
    let imageCache = NSCache<AnyObject, AnyObject>()
    
    func setupBackdrop(){
        if let backdropurl = self.category?.image{
            print(backdropurl)
            self.cuisineThumbnail.image = nil
            let url = URL(string: backdropurl)
            
            
            if let imageFromCache = imageCache.object(forKey: category?.image as AnyObject) as? UIImage{
                self.cuisineThumbnail.image = imageFromCache
                return
            }
            
            URLSession.shared.dataTask(with: url!, completionHandler: { (data, response, error) in
                if error != nil{
                    return
                }
                DispatchQueue.main.async {
                    let backdrop = UIImage(data: data!)
                    self.imageCache.setObject(backdrop!, forKey: self.category?.image as AnyObject)
                    self.cuisineThumbnail.image = backdrop
                    
                }
            }).resume()
            
        }
    }
    
}
