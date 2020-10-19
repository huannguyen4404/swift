import UIKit

var someDoubles = [Double]()
someDoubles.append(100.02)
someDoubles.append(3.2)
print("number of elements: \(someDoubles.count)")

var fourInts = Array(repeating: 5, count: 4)
var twoInts = Array(repeating: 9, count: 2)

var merged2Ints = fourInts + twoInts

var smartPhones = ["iphone", "samsung", "htc"]
smartPhones += ["nokia", "blackberry"]
smartPhones.insert("xiaomi", at: 1)
print(smartPhones)
smartPhones.remove(at: 1)
print(smartPhones)

for (index, value) in smartPhones.enumerated() {
    print("index[\(index)]: \(value)")
}
