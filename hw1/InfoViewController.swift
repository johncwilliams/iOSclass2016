//
//  InfoViewController.swift
//  hw1
//
//  Created by John C Williams on 2/3/16.
//  Copyright © 2016 John C. Williams. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    //@IBOutlet weak var johnview: UIImageView!
    
    //@IBOutlet weak var johnview2: UIImageView!
    
    //@IBOutlet weak var johnview3: UIImageView!
    
    @IBOutlet weak var johnview4: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let johnAnimation: [UIImage] = [
            
            UIImage(named: "johnfaceleft")!,
            
            UIImage(named: "johnfaceright")!,
        ]

        johnview4.animationImages = johnAnimation
        johnview4.animationDuration = 1.0
        
        if (johnview4.isAnimating){
            
            johnview4.stopAnimating()
            
        }else{
            johnview4.startAnimating()
            
            johnview4.startAnimating()
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func toggleAnimation3(_ sender: AnyObject) {
        if (johnview4.isAnimating){
            
            johnview4.stopAnimating()
            
        }else{
            johnview4.startAnimating()
            
            johnview4.startAnimating()
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
