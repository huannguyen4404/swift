import UIKit

//for index in 1...10 {
//    print("index: \(index)")
for _ in 1..<10 {
    print("Hello")
}

for index in stride(from: 1, to: 5, by: 0.5) {
    print("index \(index)")
}

var startVal = 0
/*
while startVal < 100 {
    print("startVal \(startVal)")
    startVal += 15
    if (startVal == 45) {
//        continue
        break
    }
    print("Output value: \(startVal)")
}
*/

/*
repeat {
    print("startVal \(startVal)")
    startVal += 15
} while startVal < 100
*/
/*
var yourPoint = 8
var result:String
switch yourPoint {
case 0..<2:
    result = "very bad"
case 2..<5:
    result = "Under average"
case 5..<7:
    result = "Average"
case 7..<9:
    result = "Good"
case 9...10:
    result = "Excellent"
default:
    result = "Invalid value"
}
print("Result: \(result)")
*/

let hero = "Zuka"
switch hero {
case "Wisp", "TelAnnas", "Violet":
    print("AD, go to Dragon Lane.")
case "Veera", "Krixi", "Lauriel":
    print("Mid laner.")
case "Zuka", "Richter":
    print("Solo top.")
    fallthrough
default:
    print("Let's roam.")
}
