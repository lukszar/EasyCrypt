//
//  Data+BytesArray.swift
//  EasyCrypt
//
//  Created by Lukasz Szarkowicz on 17.01.2019.
//

import Foundation

public extension Data {

    func bytesArray<T: ExpressibleByIntegerLiteral>() -> [T] {
        var bytes = Array<T>(repeating: 0, count: self.count)
        (self as NSData).getBytes(&bytes, length:self.count * MemoryLayout<T>.size)
        return bytes
    }
}
