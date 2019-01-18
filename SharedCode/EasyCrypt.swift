//
//  EasyCrypt.swift
//  EasyCrypt
//
//  Created by Lukasz Szarkowicz on 17.01.2019.
//

import Foundation
import CommonCrypto

/**
 Main class of EasyCrypt framework for HMAC encryption.
*/
public class EasyCrypt {
    fileprivate let secretKey: [UInt8]
    fileprivate let algorithm: EasyCrypt.Algorithm

    /**
     Use initializer of EasyCrypt instance to create encryptor.

     ### Usage Example: ###
     ````
     let crypt = EasyCrypt(secret: "myKey", algorithm: .md5)
     ````

     - Parameter secret: secret key used to encrypt message
     - Parameter algorithm: algorithm used to message encryption
     */
    public init(secret: String = "", algorithm: EasyCrypt.Algorithm) {
        self.secretKey = secret.bytesArray()
        self.algorithm = algorithm
    }

    private func convert(_ text: String) -> [UInt8] {
        let textBytes: [UInt8] = text.bytesArray()
        let data = NSMutableData()
        data.append(textBytes, length: textBytes.count)
        var hmac = [UInt8](repeating: UInt8(0), count: Int(self.algorithm.digestLength))

        CCHmac(algorithm.cchmac, secretKey, secretKey.count, data.bytes, data.length, &hmac)

        return hmac
    }

    /**
     Method creates output encrypted string

     - Parameter text: message to encrypt
     - Returns: Base64 string of encrypted message
     */
    public func hash(_ text: String) -> String {

        let result = convert(text)
        let data = Data(bytes: UnsafeRawPointer(result), count: result.count)

        return data.base64EncodedString()
    }
}

