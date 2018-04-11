//
//  XSUtility.swift
//  XSKit
//
//  Created by le on 2018/4/2.
//  Copyright © 2018年 le. All rights reserved.
//

import Foundation
import UIKit
/// 检测是否是模拟器
///
/// - Returns: true 模拟器 false 真机
public func isSimulator() -> Bool {
    var isSim = false
    #if arch(i386) || arch(x86_64)
    isSim = true
    #endif
    return isSim
}
enum XSImageFormate:UInt8{
   case jpg
   case png
   case gif
    case tiff
    case webp
    case heic
    case unknown
}

