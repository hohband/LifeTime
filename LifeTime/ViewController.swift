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
    @IBOutlet weak var hoursremainLable: UILabel!
    
    var dateBirthStr = "1971-06-10 04:00:00"
    var ft = NSDateFormatter()
    var lifeYear = 80
    var timer: NSTimer?
    
    func initTime() {
        
        ft.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateBirth = ft.dateFromString(dateBirthStr)
        let now = NSDate()
        newSecond = now.timeIntervalSinceDate(dateBirth!)
    }
    

    var  newSecond = 0.0001 {
        willSet(spentSecond) {
            
            let fs = NSNumberFormatter()
            fs.minimumIntegerDigits = 2
            
            let supposeSecond = 80 * 365 * 24 * 60 * 60.0
            
            let remainSecond =  supposeSecond - spentSecond
            
            lifeProgress.progress = Float(spentSecond / supposeSecond)
            
            let spentDay = Int(spentSecond / 24 / 60 / 60)
            let spentHour = Int(spentSecond % (24 * 60 * 60) / 3600)
            let spentMinute = Int(spentSecond % (60 * 60) / 60)
            let spentSec = Int(spentSecond % 60)
            
            
            var strH = fs.stringFromNumber(spentHour)
            var strM = fs.stringFromNumber(spentMinute)
            var strS = fs.stringFromNumber(spentSec)
            
            var l = "\(spentDay) days \(strH!):\(strM!):\(strS!) since 1971-06-10 04:00"
            
            spentLabel.text = l
            
            let remainDay = Int(remainSecond / 24 / 60 / 60)
            let remainHour = Int(remainSecond % (24 * 60 * 60) / 3600)
            let remainMinute = Int(remainSecond % (60 * 60) / 60)
            let remainSec = Int(remainSecond % 60)
            
            strH = fs.stringFromNumber(remainHour)
            strM = fs.stringFromNumber(remainMinute)
            strS = fs.stringFromNumber(remainSec)
            
            l = "\(strH!):\(strM!):\(strS!)"
            
            remainLabel.text = l
            
            l = "\(remainDay * 24)"
            
            hoursremainLable.text = l
            
            l = "\(remainDay)"
            
            daysremainLabel.text = l
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateTimer:", userInfo: nil, repeats: true)
    }
    
    override func viewWillAppear(animated: Bool) {
        initTime()
    }
    
    override func viewWillDisappear(animated: Bool) {
        // timer?.invalidate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTimer(timer: NSTimer) {
        newSecond += 1
    }


}

