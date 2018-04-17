//
//  UIScreen+XSAdd.swift
//  XSKit
//
//  Created by le on 2018/4/2.
//  Copyright © 2018年 le. All rights reserved.
//

import Foundation
#if os(iOS)
    import UIKit
typealias Screen = UIScreen
#endif

extension Screen {
   public class func screenScal() -> CGFloat {
        return Screen.main.scale
    }
}
