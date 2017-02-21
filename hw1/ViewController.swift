//
//  ViewController.swift
//  hw1
//
//  Created by John C Williams on 2/2/16.
//  Copyright © 2016 John C. Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutlet weak var johnview1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       /* let johnAnimation: [UIImage] = [
            
            UIImage(named: "johnface")!,
            UIImage(named: "johnfaceleft")!,
            UIImage(named: "johnfaceright")!,
        ]
        
        johnview1.animationImages = johnAnimation
        johnview1.animationDuration = 1.0
        */
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        // Get the new view controller using
        segue.destination
        // Pass the selected object to the new view controller.
    }

    @IBAction func performSegue(_ sender: AnyObject) {
        
        self.performSegue(withIdentifier: "customSegue", sender: self)
        
    }
    
    

}

