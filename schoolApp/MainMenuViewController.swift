//
//  MainMenuViewController.swift
//  schoolApp
//
//  Created by John C Williams on 2/10/16.
//  Copyright © 2016 John C. Williams. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {

    @IBOutlet weak var muPicView: UIImageView!
    @IBOutlet weak var muAlumView: UIImageView!
    
    @IBOutlet weak var videoView: UIWebView!
    @IBOutlet weak var scroller: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var videoURL: URL
        var videoURLString: String
        
        videoURLString = "https://www.youtube.com/watch?v=1SVOlZS8CDM"
        
        videoURL = URL(string: videoURLString)!
        videoView.loadRequest(URLRequest(url: videoURL))
        
        scroller.contentSize = CGSize(width: 340.0, height: 1100.0)
        
        let muPicAnimation: [UIImage] = [
            UIImage(named: "mupic0")!,
            UIImage(named: "mupic1")!,
            UIImage(named: "mupic2")!,
            UIImage(named: "mupic3")!,
            UIImage(named: "mupic4")!,
            UIImage(named: "mupic5")!,
            UIImage(named: "mupic6")!,
            UIImage(named: "mupic7")!,
        ]
        
        muPicView.animationImages = muPicAnimation
        muPicView.animationDuration = 40.0
        muPicView.startAnimating()
        
        let muAlumAnimation: [UIImage] = [
            UIImage(named: "mualum1")!,
            UIImage(named: "mualum2")!,
            UIImage(named: "mualum3")!,
            UIImage(named: "mualum5")!,
            UIImage(named: "mualum4")!,
            UIImage(named: "mualum6")!,
        ]
        
        muAlumView.animationImages = muAlumAnimation
        muAlumView.animationDuration = 40.0
        muAlumView.startAnimating()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func openD2L(_ sender: AnyObject) {
        
        UIApplication.shared.openURL(URL(string: "https://d2l.mu.edu/")!)
    }
    
    @IBAction func openCheckMarq(_ sender: AnyObject) {
        
        UIApplication.shared.openURL(URL(string: "https://checkmarq.mu.edu/")!)
    }
    
    @IBAction func openeMarq(_ sender: AnyObject) {
        
        UIApplication.shared.openURL(URL(string: "https://emarq.marquette.edu/")!)
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
