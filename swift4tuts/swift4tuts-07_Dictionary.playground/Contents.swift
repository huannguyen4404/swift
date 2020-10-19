import UIKit

var user:[String:String] = ["name": "Henry", "email": "huannguyen4404@gmail.com"]
var myNums: [Int: String] = [10: "ten", 112: "One hundred and twelve"]
myNums[10]
user["email"]
print("User Dictionary has \(user.count) keys")
//user["email"] = "thehuan@revu.net"
if let oldEmail = user.updateValue("thehuan@revu.net", forKey: "email") {
    print(oldEmail)
}

//user = [:]
if (user.isEmpty) {
    print("User Dict is empty")
} else {
    print(user["email"])
}

for (key, value) in user {
    print("user_\(key): \(value)")
}
for eachKey in user.keys {
    print("key: \(eachKey)")
}
for eachVal in user.values {
    print("Value: \(eachVal)")
}

let allKeys = [String](user.keys)
print("all keys=\(allKeys)")

let allVals = [String](user.values)
print("all values = \(allVals)")
