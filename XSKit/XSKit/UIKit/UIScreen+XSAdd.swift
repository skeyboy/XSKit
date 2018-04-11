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
    class func screenScal() -> CGFont {
            return Screen.main.scale as! CGFont
    }
}
