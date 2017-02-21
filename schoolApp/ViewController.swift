//
//  ViewController.swift
//  schoolApp
//
//  Created by John C Williams on 2/7/16.
//  Copyright © 2016 John C. Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topicSelect: UISegmentedControl!
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBAction func getTopic(_ sender: AnyObject?) {
        
        var topic: String
        var topicURL: URL
        var topicURLString: String
        
       // var dormsURL: NSURL
        //var dormsURLString: String

        topic = topicSelect.titleForSegment(at: topicSelect.selectedSegmentIndex)!
        
        if topic == "Majors"{
        
            topicURLString = "http://www.marquette.edu/explore/major-computer-science.php"
        
            topicURL = URL(string: topicURLString)!
        
            webView.loadRequest(URLRequest(url: topicURL))
            
            NSLog("you picked majors")
            
        }else if topic == "Dorms"{
        
            topicURLString = "http://www.marquette.edu/explore/residence-halls.php"
            
            topicURL = URL(string: topicURLString)!
            
            webView.loadRequest(URLRequest(url: topicURL))
            
            NSLog("you picked dorms")
            
        }else if topic == "Clubs"{
            
            topicURLString = "https://marquette.collegiatelink.net/Organizations"
            
            topicURL = URL(string: topicURLString)!
            
            webView.loadRequest(URLRequest(url: topicURL))
        
            NSLog("you picked clubs")
            
        }else if topic == "Sports"{
    
        topicURLString = "http://www.gomarquette.com/"
        
        topicURL = URL(string: topicURLString)!
        
        webView.loadRequest(URLRequest(url: topicURL))
        
        NSLog("you picked sports")
        
        }
    
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getTopic(nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

