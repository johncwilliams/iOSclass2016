//
//  CustomSegue.swift
//  hw1
//
//  Created by John C Williams on 2/3/16.
//  Copyright © 2016 John C. Williams. All rights reserved.
//

import UIKit

class CustomSegue: UIStoryboardSegue {

    override func perform(){
        
        let sourceVC = self.source
        let destinationVC = self.destination
        
        sourceVC.view.addSubview(destinationVC.view)
        
        destinationVC.view.transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: UIViewAnimationOptions(), animations: { () -> Void in
            
            destinationVC.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            
            }) { (finished) -> Void in
         
                destinationVC.view.removeFromSuperview()
                
                let time = DispatchTime.now() + Double(Int64(0.001 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
                
                DispatchQueue.main.asyncAfter(deadline: time, execute: { () -> Void in
                 
                    
                        sourceVC.present(destinationVC, animated: false, completion: nil)
                    
                })
                
        }
        
    }
    
    
}
