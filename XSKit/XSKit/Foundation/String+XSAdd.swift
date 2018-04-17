//
//  String+XSAdd.swift
//  XSKit
//
//  Created by le on 2018/4/12.
//  Copyright © 2018年 le. All rights reserved.
//

import Foundation

extension String{
    var cString:UnsafePointer<Int8>?{
       return (self as NSString).utf8String
    }
   
}
