//
//  homeViewController.swift
//  Fresh Sauce
//
//  Created by Swathy Sudarsanan on 22/07/17.
//  Copyright © 2017 BladeSilver. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class homeViewController: UIViewController {

    @IBOutlet weak var popularView: PopularView!
    @IBOutlet weak var popularCollectionView: PopularCollectionViiew!
    @IBOutlet weak var cuisineView: CuisineView!
    @IBOutlet weak var cuisineColectionView: UICollectionView!

    @IBOutlet weak var spotlightView: SpotlightView!
    @IBOutlet weak var spotlightCollectionView: SpotlightCollectionView!
    let network:NetworkCalls = NetworkCalls()
    var spotLightList:[SpotLight] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        network.callHello()
        
        initiateViews()
    }
    
    private func initiateViews(){
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.spotlightCollectionView.delegate = self.spotlightView
        self.spotlightCollectionView.dataSource = self.spotlightView
        
        self.popularCollectionView.delegate = self.popularView
        self.popularCollectionView.dataSource = self.popularView
        
        
        self.cuisineView.parent = self
        
    }
    
    
    

}


extension UIColor{
    convenience init(r: CGFloat,g: CGFloat,b: CGFloat, a: CGFloat){
        self.init(red: r/255, green: g/255, blue: b/255, alpha: a)
        
    }
}


