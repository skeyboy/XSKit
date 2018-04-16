//
//  CALayer+XSAdd.swift
//  XSKit
//
//  Created by le on 2018/4/2.
//  Copyright © 2018年 le. All rights reserved.
//

import Foundation
import UIKit
extension CALayer {
    var snapshotImage:UIImage? {
        
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.isOpaque, 0)
        
        guard let context = UIGraphicsGetCurrentContext() else {
            UIGraphicsEndImageContext()
            return nil
        }
        render(in: context)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}


extension CALayer{
    var snapshotPDF:Data {
        let data:NSMutableData = NSMutableData()
        UIGraphicsBeginPDFContextToData(data, self.bounds, nil)
        let context = UIGraphicsGetCurrentContext()
        UIGraphicsBeginPDFPage()
        self.render(in: context!)
        UIGraphicsEndPDFContext()
        return data as Data
        
    }
}
