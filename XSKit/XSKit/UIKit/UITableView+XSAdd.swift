//
//  UITableView+XSAdd.swift
//  XSKit
//
//  Created by le on 2018/4/3.
//  Copyright © 2018年 le. All rights reserved.
//

import Foundation
#if os(iOS)
import UIKit
typealias TableView = UITableView
#endif

extension TableView{
    public func updateMultiple( closure:(TableView)->Void){
        beginUpdates()
        closure(self)
        endUpdates()
    }
}
