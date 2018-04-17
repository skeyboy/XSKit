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
 public   var snapshotImage:UIImage?{
        UIGraphicsBeginImageContextWithOptions(self.bounds.size,self.isOpaque, 0)
        layer.render(in: UIGraphicsGetCurrentContext()!)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
  public  var viewController:UIViewController? {
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
   public var size: CGSize{
        return self.frame.size
    }
  public  var origin: CGPoint{
        return self.frame.origin
    }
   public var height: CGFloat{
        return self.size.height
    }
   public var width: CGFloat{
        return self.size.width
    }
  public  var top:CGFloat{
        return self.origin.y
    }
  public  var bottom:CGFloat{
        return self.frame.origin.y + self.size.height
    }
  public  var left:CGFloat{
        return self.origin.x
    }
  public  var right: CGFloat{
        return self.origin.x + self.width
    }
  public  var centerX: CGFloat{
        return self.center.x
    }
  public  var centerY: CGFloat{
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
