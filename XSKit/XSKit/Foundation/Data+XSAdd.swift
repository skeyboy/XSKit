//
//  Data+XSAdd.swift
//  XSKit
//
//  Created by le on 2018/4/16.
//  Copyright © 2018年 le. All rights reserved.
//

import Foundation
let CC_SHA1_DIGEST_LENGTH = 20

typealias CC_LONG = UInt32

extension Data {
   
   public func hexString() -> String {
        let string = self.map{String(format:"%02x", Int($0))}.joined()
        return string
    }
    
}
