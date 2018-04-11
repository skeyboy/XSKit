//
//  UIDevice+XSAdd.swift
//  XSKit
//
//  Created by le on 2018/4/2.
//  Copyright © 2018年 le. All rights reserved.
//


import Foundation
#if os(iOS)
    import UIKit
typealias Device = UIDevice
#endif

extension Device{
    public func isSimulator() -> Bool {
        #if TARGET_OS_SIMULATOR
return true
        #else
return false
        #endif
    }
    public func canMakePhoneCalls() -> Bool {
        return UIApplication.shared.canOpenURL(URL(string: "tel://")!)
    }
}
extension Device {
    public var isJailbroken:Bool{
        if  isSimulator() {
            return false
        }
        let paths = ["/Applications/Cydia.app",
                      "/private/var/lib/apt/",
                       "/private/var/lib/cydia",
                        "/private/var/stash"]
        for path in paths {
            if FileManager.default.fileExists(atPath: path){
            return true
            }
            
        }
        return true
    }
}
