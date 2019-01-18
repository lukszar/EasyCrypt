/*:
 Here you can find short demo example showing usage of my framework.

 Github: [https://github.com/lukszar/EasyCrypt](https://github.com/lukszar/EasyCrypt)
 */
import Foundation
import EasyCrypt
/*:
 ## EasyCrypt - demo

 ### 1. Create EasyCrypt object
 For initialization you have to provide _secretKey_ and _algorithm_ which you want to use for encrypting
 */
let crypto = EasyCrypt(secret: "mySecretKey", algorithm: .sha256)
/*:

 ### 2. Encrypt text and get base64 string
 Use _hash(:)_ method for string enryption. Result is base64 string.
 */
let result = crypto.hash("This is very secret text to encrypt")
let otherResult = crypto.hash("This is another secret text to encrypt")

print("result: ", result)
print("otherResult: ", otherResult)


