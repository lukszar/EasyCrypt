//
//  EasyCrypt+Algorithm.swift
//  EasyCrypt
//
//  Created by Lukasz Szarkowicz on 17.01.2019.
//

import Foundation
import CommonCrypto

public extension EasyCrypt {

    /**
     Enum types of algorithms you can choose during encryption.
     */
    public enum Algorithm {
        case md5, sha1, sha224, sha256, sha384, sha512

        var digestLength: Int32 {
            switch self {

            case .md5:
                return CC_MD5_DIGEST_LENGTH
            case .sha1:
                return CC_SHA1_DIGEST_LENGTH
            case .sha224:
                return CC_SHA224_DIGEST_LENGTH
            case .sha256:
                return CC_SHA256_DIGEST_LENGTH
            case .sha384:
                return CC_SHA384_DIGEST_LENGTH
            case .sha512:
                return CC_SHA512_DIGEST_LENGTH
            }
        }

        internal var cchmac: CCHmacAlgorithm {
            switch self {
            case .sha1 : return CCHmacAlgorithm(kCCHmacAlgSHA1)
            case .md5 : return CCHmacAlgorithm(kCCHmacAlgMD5)
            case .sha256 : return CCHmacAlgorithm(kCCHmacAlgSHA256)
            case .sha384 : return CCHmacAlgorithm(kCCHmacAlgSHA384)
            case .sha512: return CCHmacAlgorithm(kCCHmacAlgSHA512)
            case .sha224: return CCHmacAlgorithm(kCCHmacAlgSHA224)
            }
        }
    }
}
