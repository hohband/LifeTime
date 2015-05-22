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








