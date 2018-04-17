//
//  UIColor+XSAdd.swift
//  XSKit
//
//  Created by le on 2018/4/17.
//  Copyright © 2018年 le. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics

extension UIColor{
    var alpha: CGFloat{
        return self.cgColor.alpha
    }
    var rgbValue:Int32{
        
        let red:UnsafeMutablePointer<CGFloat> = UnsafeMutablePointer<CGFloat>.allocate(capacity: 0)
        let green:UnsafeMutablePointer<CGFloat> = UnsafeMutablePointer<CGFloat>.allocate(capacity: 0)
        let blue:UnsafeMutablePointer<CGFloat> = UnsafeMutablePointer<CGFloat>.allocate(capacity: 0)
        let alpha:UnsafeMutablePointer<CGFloat> = UnsafeMutablePointer<CGFloat>.allocate(capacity: 0)
        
        self.getRed(red, green: green, blue: blue, alpha: alpha)
        return (Int32(red.pointee) << 16) + (Int32(green.pointee) << 8) +
            Int32(blue.pointee)
    }
}
