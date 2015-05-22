//
//  ViewController.swift
//  LifeTime
//
//  Created by Li Li on 5/23/15.
//  Copyright (c) 2015 Li Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // @IBOutlet weak var lifeProgress: UIProgressView!
    @IBOutlet weak var lifeProgress: UIProgressView!
    @IBOutlet weak var spentLabel: UILabel!
    @IBOutlet weak var remainLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var now = NSDate()
        
        var dateBirthStr = "1971-06-10 04:00:00"
        var ft = NSDateFormatter()
        ft.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        
        var dateBirth = ft.dateFromString(dateBirthStr)
        
        var lifeYear = 80
        
        var spentSecond = now.timeIntervalSinceDate(dateBirth!)
        
        var supposeSecond = 80 * 365 * 24 * 60 * 60.0
        
        var remainSecond =  supposeSecond - spentSecond
        
        lifeProgress.progress = Float(spentSecond / supposeSecond)
        spentLabel.text = "1"
        remainLabel.text = "2"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

