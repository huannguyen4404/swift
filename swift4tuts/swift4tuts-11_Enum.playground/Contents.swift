import UIKit

enum Level {
    case low, medium, high
}

// var myLevel = Level.high
var myLevel:Level = .high
switch myLevel {
case .high:
    print("It is high level")
case .medium:
    print("It is medium lvl")
case .low:
    print("It is low lvl")
default:
    print("Not a lvl")
}

enum AppleDevice {
    case appleWatch(String, UIColor)
    case iphone(Float, UIColor)
}
//var myDevice: AppleDevice = .appleWatch("sport 42mm", UIColor.green)
var myDevice: AppleDevice = .iphone(11.3, UIColor.gray)
switch myDevice {
case let .appleWatch(name, color):
    print("My device is Apple Watch with name=\(name), color: \(color)")
case let .iphone(iosVersion, color):
    print("My device is iPhone, ios version=\(iosVersion), color: \(color)")
default:
    print("Not apple Watch or iPhone")
}

enum Animals: Character {
    case ant = "🐜"
    case octobus = "🐙"
    case pig = "🐖"
}
print("Octobus icon: \(Animals.octobus.rawValue)")

enum Direction:Int {
    case top = 1
    case bottom = 2
    case left = 3
    case right = 4
}
print("Raw value of Left is: \(Direction.left.rawValue)")
