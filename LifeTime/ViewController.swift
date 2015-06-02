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
    @IBOutlet weak var daysremainLabel: UILabel!

    var  newSecond = 0.0001 {
        willSet(spentSecond) {
            
            var fs = NSNumberFormatter()
            fs.minimumIntegerDigits = 2
            
            var supposeSecond = 80 * 365 * 24 * 60 * 60.0
            
            var remainSecond =  supposeSecond - spentSecond
            
            lifeProgress.progress = Float(spentSecond / supposeSecond)
            
            var spentDay = Int(spentSecond / 24 / 60 / 60)
            var spentHour = Int(spentSecond % (24 * 60 * 60) / 3600)
            var spentMinute = Int(spentSecond % (60 * 60) / 60)
            var spentSec = Int(spentSecond % 60)
            
            
            var strH = fs.stringFromNumber(spentHour)
            var strM = fs.stringFromNumber(spentMinute)
            var strS = fs.stringFromNumber(spentSec)
            
            var l = "\(spentDay) days \(strH!):\(strM!):\(strS!) since 1971-06-10 04:00"
            
            spentLabel.text = l
            
            var remainDay = Int(remainSecond / 24 / 60 / 60)
            var remainHour = Int(remainSecond % (24 * 60 * 60) / 3600)
            var remainMinute = Int(remainSecond % (60 * 60) / 60)
            var remainSec = Int(remainSecond % 60)
            
            strH = fs.stringFromNumber(remainHour)
            strM = fs.stringFromNumber(remainMinute)
            strS = fs.stringFromNumber(remainSec)
            
            l = "\(strH!):\(strM!):\(strS!)"
            
            remainLabel.text = l
            
            l = "\(remainDay)"
            
            daysremainLabel.text = l
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var now = NSDate()
        var dateBirthStr = "1971-06-10 04:00:00"
        var ft = NSDateFormatter()
        ft.dateFormat = "yyyy-MM-dd HH:mm:ss"
        var dateBirth = ft.dateFromString(dateBirthStr)
        var lifeYear = 80
        newSecond = now.timeIntervalSinceDate(dateBirth!)

        var timer: NSTimer?
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateTimer:", userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTimer(timer: NSTimer) {
        newSecond += 1
    }


}

