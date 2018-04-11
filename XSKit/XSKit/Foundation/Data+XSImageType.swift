//
//  Data+XSImageType.swift
//  XSKit
//
//  Created by le on 2018/4/11.
//  Copyright © 2018年 le. All rights reserved.
//

import Foundation
import ImageIO
import MobileCoreServices
extension Data{
    var xsType: XSImageFormate {
        
        let buffer:UnsafeMutablePointer<UInt8> = UnsafeMutablePointer<UInt8>.allocate(capacity: 1)
        defer {
            buffer.deallocate()
        }
        self.copyBytes(to: buffer, count: 1)
         let formate = XSImageFormate(rawValue: buffer.pointee)
        var type:XSImageFormate = .unknown
        let value = formate?.rawValue
        
        switch formate?.rawValue {
        case 0xFF:
            type = .jpg
            break
        case 0x89:
            type = .png
            break
        case 0x47:
            type = .gif
            break
        case 0x49 , 0x4D:
            type = .tiff
            break
        case 0x52:
            if self.count >= 12 {
                let testString = String.init(data: self.subdata(in: Range<Data.Index>.init(NSRange(location: 0, length: 12))!), encoding: String.Encoding.ascii)
                if (testString?.hasPrefix("RIFF"))! || (testString?.hasSuffix("WEBP"))! {
                    type = .webp
                    break
                }
            }
        case 0x00:
            if self.count >= 12 {
                let testString = String.init(data: self.subdata(in: Range<Data.Index>.init(NSRange(location: 4, length: 8))!), encoding: String.Encoding.ascii)
                if (testString?.hasPrefix("ftypheic"))! || (testString?.hasSuffix("ftypheix"))!  || (testString?.hasSuffix("ftyphevc"))!  || (testString?.hasSuffix("ftyphevx"))! {
                    type = .heic
                    break
                }
            }
            
        default:
            type = .unknown
            break
        }
        
        return type
    }
    
    
}
