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
extension Device{
   public var cpuCount:Int{
        return ProcessInfo.processInfo.activeProcessorCount
    }
  public  var memoryTotal:UInt64{
      return  ProcessInfo.processInfo.physicalMemory
    }
  public  var memoryUsed:Int64 {
        let host_port:mach_port_t =  mach_host_self()
        
        let host_size:UnsafeMutablePointer<mach_msg_type_number_t> = UnsafeMutablePointer<mach_msg_type_number_t>.allocate(capacity: MemoryLayout.size(ofValue: vm_statistics_data_t())/MemoryLayout.size(ofValue: integer_t()))
        
        let page_size:UnsafeMutablePointer<vm_size_t> = UnsafeMutablePointer<vm_size_t>.allocate(capacity: 0)
        
       var kern = host_page_size(host_port, page_size)
        if kern != KERN_SUCCESS {
            return -1
        }
        let vm_stat:(Any)? = nil
        kern = host_statistics(host_port, HOST_VM_INFO, vm_stat as! host_info_t,host_size )
        if kern != KERN_SUCCESS {
            return -1
        }
        
        return Int64((vm_stat as! vm_statistics_data_t).free_count) * Int64(page_size.pointee)
        
    }
   public var diskSpaceFree:Int64{
        let attrs = try! FileManager.default.attributesOfFileSystem(forPath: NSHomeDirectory())
        
        return attrs[FileAttributeKey.systemFreeSize] as! Int64
    }
   public var diskSpace:Int64 {
        let attrs = try! FileManager.default.attributesOfFileSystem(forPath: NSHomeDirectory())
        return attrs[FileAttributeKey.systemSize] as! Int64
    }
   public var diskSpaceUsed:Int64 {
        
        return min(diskSpace - diskSpaceFree, diskSpace)
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
