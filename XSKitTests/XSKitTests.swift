//
//  XSKitTests.swift
//  XSKitTests
//
//  Created by le on 2018/4/2.
//  Copyright © 2018年 le. All rights reserved.
//

import XCTest
@testable import XSKit


class XSKitTests: XCTestCase {
    var application:UIApplication? = UIApplication.shared
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
     }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
       
        super.tearDown()
    }
    func testIsSimulator() {
        let isSimulator = XSKit.isSimulator()
        assert(isSimulator, "模拟器")
        
    }
    func testCanMakePhoneCalls()  {
        let device = UIDevice.current
        let can = device.canMakePhoneCalls()
        assert(can, "不能拨打电话")
        print("设备能够拨打电话")
    }
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testApplicationExtension()  {
        print(application?.appBuildVersion)
        print(application?.appVersion )
        print(application?.documentsURL)
    }
    func testImageType(){
        let image = UIImage(named: "SDWebImageClassDiagram")
        
        let data = UIImagePNGRepresentation(image!)
        let formate = data?.xsType
        print("\(String(describing: formate))")
        
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
