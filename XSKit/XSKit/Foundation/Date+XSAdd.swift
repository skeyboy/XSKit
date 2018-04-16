//
//  Date+XSAdd.swift
//  XSKit
//
//  Created by le on 2018/4/16.
//  Copyright © 2018年 le. All rights reserved.
//

import Foundation
extension Date{
    
    var year:Int {
        var set:Set<Calendar.Component> = Set<Calendar.Component>()
        set.insert(Calendar.Component.year)
        return Calendar.current.dateComponents(set, from: self).year!
    }
    var month:Int {
        var set: Set<Calendar.Component> = Set<Calendar.Component>()
        set.insert(Calendar.Component.month)
        return Calendar.current.dateComponents(set, from: self).month!
    }
    var day: Int{
        var set: Set<Calendar.Component> = Set<Calendar.Component>()
        set.insert(Calendar.Component.day)
        return Calendar.current.dateComponents(set, from: self).day!
    }
    var hour: Int{
        var set: Set<Calendar.Component> = Set<Calendar.Component>()
        set.insert(Calendar.Component.hour)
        return Calendar.current.dateComponents(set, from: self).hour!
    }
    var minute: Int{
        var set: Set<Calendar.Component> = Set<Calendar.Component>()
        set.insert(Calendar.Component.minute)
        return Calendar.current.dateComponents(set, from: self).minute!
    }
    var second: Int{
        var set: Set<Calendar.Component> = Set<Calendar.Component>()
        set.insert(Calendar.Component.hour)
        return Calendar.current.dateComponents(set, from: self).second!
    }
    
    var weekday: Int{
        var set: Set<Calendar.Component> = Set<Calendar.Component>()
        set.insert(Calendar.Component.weekday)
        return Calendar.current.dateComponents(set, from: self).weekday!
    }
    var weekdayOrdinal: Int{
        var set: Set<Calendar.Component> = Set<Calendar.Component>()
        set.insert(Calendar.Component.weekdayOrdinal)
        return Calendar.current.dateComponents(set, from: self).weekdayOrdinal!
    }
    var weekOfMonth: Int{
        var set: Set<Calendar.Component> = Set<Calendar.Component>()
        set.insert(Calendar.Component.weekOfMonth)
        return Calendar.current.dateComponents(set, from: self).weekOfMonth!
    }
    var weekOfYear: Int{
        var set: Set<Calendar.Component> = Set<Calendar.Component>()
        set.insert(Calendar.Component.weekOfYear)
        return Calendar.current.dateComponents(set, from: self).weekOfYear!
    }
    var yearForWeekOfYear: Int{
        var set: Set<Calendar.Component> = Set<Calendar.Component>()
        set.insert(Calendar.Component.yearForWeekOfYear)
        return Calendar.current.dateComponents(set, from: self).yearForWeekOfYear!
    }
}

extension Date {
    var isLeapYear:Bool {
         return ((year % 400 == 0) || ((year % 100 != 0) && (year % 4 == 0)))
    }
    var isToday:Bool{
        if (fabs(self.timeIntervalSinceNow) >= 60 * 60 * 24) {        
            return false;
        }

        return Date().day !=  day
    }
}
