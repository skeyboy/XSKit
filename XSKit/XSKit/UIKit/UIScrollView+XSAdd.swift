//
//  UIScrollView+XSAdd.swift
//  XSKit
//
//  Created by le on 2018/4/3.
//  Copyright © 2018年 le. All rights reserved.
//

import Foundation
#if os(iOS)
    import UIKit
typealias ScrollView = UIScrollView
#endif

extension ScrollView{
    
    
}
extension ScrollView {
    
    public func scrollToTop(animated:Bool=true){
        var offSet = self.contentOffset
        
        offSet.y = 0 -  self.contentInset.top
        
        self.setContentOffset(offSet, animated: animated)
    }
    
    
    public func scrollToBottom(animated:Bool = true){
        var offSet: CGPoint = self.contentOffset
        offSet.y = self.contentSize.height-self.bounds.size.height+self.contentInset.bottom
        self.setContentOffset(offSet, animated: animated)
    }
    
    public func scrollToLeft(animated:Bool = true){
        var offSet: CGPoint = self.contentOffset
        offSet.x = 0 - self.contentInset.left
        self.setContentOffset(offSet, animated: animated)
    }
    
    public func scrollToRight(animated:Bool = true){
        var offSet: CGPoint = self.contentOffset
        offSet.x = self.contentSize.width - self.bounds.size.width + self.contentInset.right
        self.setContentOffset(offSet, animated: animated)
    }
}
