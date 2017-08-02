//
//  ItemDetailAnimator.swift
//  Fresh Sauce
//
//  Created by Swathy on 02/08/17.
//  Copyright © 2017 BladeSilver. All rights reserved.
//

import UIKit

class ItemDetailAnimator: NSObject,UIViewControllerAnimatedTransitioning {
    var dismissCompletion: (()->Void)?
    var presenting = true
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval{
        return 5.0
    }
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning){
        let containerView = transitionContext.containerView
        let toView = transitionContext.view(forKey: .to)!
        containerView.addSubview(toView)
        UIView.animate(withDuration: 0, delay:0.3,
                       usingSpringWithDamping: 0.4, initialSpringVelocity: 0.0,
                       animations: {
        }, completion: { _ in
            transitionContext.completeTransition(true)
        })
        if !self.presenting {
            self.dismissCompletion?()
        }
        
        
    }
}
