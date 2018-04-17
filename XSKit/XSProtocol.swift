//
//  XSProtocol.swift
//  XSKit
//
//  Created by le on 2018/4/17.
//  Copyright © 2018年 le. All rights reserved.
//

import Foundation
 @objc protocol XSProtocol {
    @objc optional func optionalFunc() ->Void
    
    func normalFunc() -> Void
}
 @objc protocol XSObjectDelegate{
    
    /// 可选实现的一个测试func
    ///
    /// - Returns: Void
    @objc optional func aOptionalFunc()->Void
    
    /// 仅仅用于测试必须实现的func 无其他意义
    ///
    /// - Returns: Void
    func justSayHello()->Void
}

public class XSObject: XSProtocol{
      var delegate:XSObjectDelegate?
    
    func normalFunc() {
        print("normalFunc")

    }
    public func delegateTest()->Void{
        if let delegate = self.delegate {
            if delegate.aOptionalFunc != nil {
                delegate.aOptionalFunc!()
            }
            delegate.justSayHello()
            
        }
    }
//    func optionalFunc() {
//        print("optionalFunc")
//    }

}
