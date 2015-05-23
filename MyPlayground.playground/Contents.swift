//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var now = NSDate()

var dateBirthStr = "1971-06-10 04:00:00"
var ft = NSDateFormatter()
ft.dateFormat = "yyyy-MM-dd HH:mm:ss"


var dateBirth = ft.dateFromString(dateBirthStr)

var lifeYear = 80

var spentSecond = now.timeIntervalSinceDate(dateBirth!)

var supposeSecond = 80 * 365 * 24 * 60 * 60.0

var remainSecond =  supposeSecond - spentSecond

var f = Float(spentSecond / supposeSecond)

var spentDay = Int(spentSecond / 24 / 60 / 60)
var spentHour = Int(spentSecond % (24 * 60 * 60) / 3600)
var spentMinute = Int(spentSecond % (60 * 60) / 60)
var spentSec = Int(spentSecond % 60)

var fs = NSNumberFormatter()
fs.minimumIntegerDigits = 2

var strH = fs.stringFromNumber(spentHour)
var strM = fs.stringFromNumber(spentMinute)
var strS = fs.stringFromNumber(spentSec)

var l = "\(spentDay) \(strH!):\(strM!):\(strS!)"

//fs.paddingCharacter = "0"
//fs.paddingPosition = NSNumberFormatterPadPosition.BeforePrefix

fs.stringFromNumber(spentSec)

var t = 3

fs.stringFromNumber(t)













