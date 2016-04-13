//
//  DeckViewCard.swift
//  DeckView
//
//  Created by Alexander Besson on 2016-04-12.
//  Copyright © 2016 Alexander Besson. All rights reserved.
//

import UIKit

class DeckViewCard: UIView {
    
    @IBOutlet weak var imgMain: UIImageView!
    @IBOutlet weak var imgSmall: UIImageView!
    @IBOutlet weak var vwSmallImage: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func blurImageView() {
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = imgMain.bounds
        blurEffectView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight] // for supporting device rotation
        imgMain.addSubview(blurEffectView)
    }
    
    func roundSmallImageView() {
        imgSmall.layer.cornerRadius = imgSmall.bounds.width / 2
        imgSmall.clipsToBounds = true
        imgSmall.layer.borderColor = UIColor(white: 245/255, alpha: 1).CGColor
        imgSmall.layer.borderWidth = 1
        
        vwSmallImage.layer.cornerRadius = vwSmallImage.bounds.width / 2
        vwSmallImage.clipsToBounds = true
        vwSmallImage.layer.borderColor = UIColor(white: 245/255, alpha: 0.45).CGColor
        vwSmallImage.layer.borderWidth = 4
        vwSmallImage.backgroundColor = UIColor.clearColor()
        vwSmallImage.layer.shadowColor = UIColor.darkGrayColor().CGColor
        vwSmallImage.layer.shadowOpacity = 0.5
        vwSmallImage.layer.shadowRadius = 2
        vwSmallImage.layer.shadowOffset = CGSize(width: 0, height: 0)
    }
    
    func openImage() {
        
        UIView.animateWithDuration(1, animations: {
            
            self.vwSmallImage.frame = CGRect(x: 0, y: 0, width: UIScreen.mainScreen().bounds.width - 40, height: self.imgMain.bounds.height - 90)

            
            }) { (completed) in
                
                UIView.animateWithDuration(0.3, animations: { 
                    
                    let animation = CABasicAnimation(keyPath: "cornerRadius")
                    animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    animation.fromValue = self.vwSmallImage.layer.cornerRadius
                    animation.toValue = 0
                    animation.duration = 1
                    animation.cumulative = true
                    self.vwSmallImage.layer.addAnimation(animation, forKey: "cornerRadius")
                    self.vwSmallImage.layer.cornerRadius = 0

                })

        }
        
        
        
        UIView.animateWithDuration(1, delay: 1, options: UIViewAnimationOptions.AllowAnimatedContent, animations: {
            
            
            }) { (completed) in
                
        }
    }
    
    override func animationDidStop(anim: CAAnimation, finished flag: Bool) {
        self.vwSmallImage.layer.cornerRadius = 0
        self.vwSmallImage.layer.removeAllAnimations()
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
