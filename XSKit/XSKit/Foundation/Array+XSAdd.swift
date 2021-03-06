//
//  Array+XSAdd.swift
//  XSKit
//
//  Created by le on 2018/4/16.
//  Copyright © 2018年 le. All rights reserved.
//

import Foundation
let lock = DispatchSemaphore(value: 1)

extension Array{
    func safe( safe:()->Void){
        let _: DispatchTimeoutResult = lock.wait(timeout: .distantFuture)
            safe()
        lock.signal()
       
    }
}
extension Array{
   public var first: Element? {
        var tmp:Element? = nil
        safe {
            tmp = self.first
        }
        return tmp
    }
  public  var last: Element? {
        var tmp:Element? = nil
        safe {
            tmp = self.last
        }
        return tmp
    }
    
}
extension Array{
   public func append<Element>(element:Element) -> Void {
        safe {
            self.append(element: element)
        }
    }
   public func  insert<Element>(newElement: Element, at: Int){
        safe {
            self.insert(newElement: newElement, at: at)
        }
        
    }

}
