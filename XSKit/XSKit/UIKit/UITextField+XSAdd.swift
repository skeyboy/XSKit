//
//  UITextField+XSAdd.swift
//  XSKit
//
//  Created by le on 2018/4/2.
//  Copyright © 2018年 le. All rights reserved.
//

import Foundation
#if os(iOS)
import UIKit
typealias TextField = UITextView
#endif

extension TextField {
    public func selectedAllText(){
      let range = textRange(from: beginningOfDocument, to: endOfDocument)
        self.selectedTextRange = range
    }
    
    /// 变更选择的文本
    ///
    /// - Parameter newRange: 最新的文本选择范围
    public func changeTextSelectedRange(_ newRange:NSRange) {
        let beginPosition = beginningOfDocument
        let startPosition = self.position(from: beginPosition, offset: newRange.location)
        let  endPosition = position(from: beginPosition, offset: NSMaxRange(newRange))
        let selectionRange = textRange(from: startPosition!, to: endPosition!)
selectedTextRange = selectionRange
    }
}
extension TextField {
   
}
