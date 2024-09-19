//
//  DeviceKitService.swift
//  MyApp
//
//  Created by Moritz Tucher on 19.09.24.
//

import Foundation
import DeviceKit


class DeviceKitService {
    let device = Device.current
    
    func getDeviceDescription() -> String {
        return "\(device.description)"
    }
    
    func getDeviceName() -> String {
        return "\(device.name ?? "")"
    }
    
    func getDeviceType() -> String {
        return "\(device.systemVersion ?? "")"
    }
}
