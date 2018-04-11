//
//  UIView+XSAdd.swift
//  XSKit
//
//  Created by le on 2018/4/3.
//  Copyright © 2018年 le. All rights reserved.
//

import Foundation
#if os(iOS)
import UIKit
typealias View = UIView
#endif

extension View{
    var snapshotImage:UIImage?{
        UIGraphicsBeginImageContextWithOptions(self.bounds.size,self.isOpaque, 0)
        layer.render(in: UIGraphicsGetCurrentContext()!)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    var viewController:UIViewController? {
        var aView:UIView? = self
        while aView != nil {
            let next: UIResponder? = aView?.next
            if next is UIViewController {
                return next as? UIViewController
            }
            aView = aView?.superview
        }
        return nil
    }
    var size: CGSize{
        return self.frame.size
    }
    var origin: CGPoint{
        return self.frame.origin
    }
    var height: CGFloat{
        return self.size.height
    }
    var width: CGFloat{
        return self.size.width
    }
    var top:CGFloat{
        return self.origin.y
    }
    var bottom:CGFloat{
        return self.frame.origin.y + self.size.height
    }
    var left:CGFloat{
        return self.origin.x
    }
    var right: CGFloat{
        return self.origin.x + self.width
    }
    var centerX: CGFloat{
        return self.center.x
    }
    var centerY: CGFloat{
        return self.center.y
    }
}
extension View{
    public func removeAllSubview() {
        
        while self.subviews.count > 0 {
            self.subviews.last?.removeFromSuperview()
        }
    }
}
