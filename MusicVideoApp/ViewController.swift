//
//  ViewController.swift
//  MusicVideoApp
//
//  Created by venturit on 5/3/16.
//  Copyright © 2016 venturit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Call API
        let api = APIManager()
        api.loadData("https://itunes.apple.com/us/rss/topmusicvideos/limit=50/json", completion: didLoadData)
    }
    
    func didLoadData(result:String) {
        
        let alert = UIAlertController(title: (result), message: nil, preferredStyle: .ActionSheet)
        
        let okAction = UIAlertAction(title: "ok", style: .Default) {
            action -> Void in
        }
        
        alert.addAction(okAction)
        self.presentViewController(alert, animated: true, completion: nil)

    }
}

