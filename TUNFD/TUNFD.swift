//
//  TUNFD.swift
//  TUNFD
//
//  Created by 杨建祥 on 2022/1/10.
//

import Foundation
import NetworkExtension

class TUNFD: NSObject {
    
    override init() {
        super.init()
    }
    
    @objc static func tunnelFileDescriptor(_ flow: NEPacketTunnelFlow)-> Int32 {
        if let socket = flow.value(forKeyPath: "socket.fileDescriptor"){
            return socket as? Int32 ?? 0
        }else{
            var buf = [CChar](repeating: 0, count: Int(IFNAMSIZ))
            let utunPrefix = "utun".utf8CString.dropLast()
            return (0...1024).first { (_ fd: Int32) -> Bool in
                var len = socklen_t(buf.count)
                return getsockopt(fd, 2 /* SYSPROTO_CONTROL */, 2, &buf, &len) == 0 && buf.starts(with: utunPrefix)
            } ?? 0
        }
    }
    
}
