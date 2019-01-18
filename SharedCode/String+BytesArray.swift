//
//  String+BytesArray.swift
//  EasyCrypt
//
//  Created by Lukasz Szarkowicz on 17.01.2019.
//

import Foundation

public extension String {
    /**
     Method creates bytes array from given String

     - Returns: Array of bytes
     */
    func bytesArray<T: ExpressibleByIntegerLiteral>() -> [T] {
        let data = self.data(using: String.Encoding.utf8)!
        return data.bytesArray()
    }
}
