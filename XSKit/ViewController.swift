//
//  ViewController.swift
//  XSKit
//
//  Created by le on 2018/4/2.
//  Copyright © 2018年 le. All rights reserved.
//

import UIKit

class ViewController: UIViewController, XSObjectDelegate {
    func justSayHello() {
        print("justSayHello")
    }
    func aOptionalFunc() {
        print("这个可以不用实现，实现了就会被调用")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let xsObj: XSProtocol = XSObject()
        (xsObj as! XSObject).delegate = self
        (xsObj as! XSObject).delegateTest()

        if (xsObj.optionalFunc != nil) {
              xsObj.optionalFunc!()
        }
      
        xsObj.normalFunc()
     }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

