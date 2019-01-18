<p align="center">
  <img src="http://szarkowicz.info/github/easycrypt/banner.png" alt="EasyCrypt logo ">
</p>

![Build passing](https://img.shields.io/badge/build-passing-brightgreen.svg?style=flat)
![Swift 4.2](https://img.shields.io/badge/in-swift%204.0-orange.svg)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)


# EasyCrypt
Simple framework for HMAC encoding in Swift for **iOS**, **tvOS** and **macOS**

## Installation 
You can add framework to your project manually, or ...

add framework using Carthage:

```
github "lukszar/EasyCrypt"
```

## Examples
Below look at examples you can use in your app.

### Create encrypted message
```
  let crypto = EasyCrypt(secret: "mySecretKey", algorithm: .sha256)
  let result = crypto.hash("This is very secret text to encrypt")
  let otherResult = crypto.hash("This is another secret text to encrypt")

  print("result: ", result)
  print("otherResult: ", otherResult)
```

## App demo

Inside project you can find Playground demo.

## Disclaimer
*This program is a free software. You use it at your own risk. I don't take any responsibility for any damage, loss etc. which is an result of using this software. It comes without any warranty, to the extent permitted by applicable law. You can redistribute it and/or modify it under condition of adding an info about author of this software (Łukasz Szarkowicz).*
