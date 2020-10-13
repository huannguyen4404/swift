import UIKit

struct Fruit {
    enum RedFruit:Character {
        case apple = "🍎", watermelon="🍉", strawberry="🍓", cherry="🍒"
        enum Size: Int {
            case small=1, medium, big
        }
    }
    var myFruit: RedFruit?
    var myFruitSize: RedFruit.Size?
    var description: String {
        return "fruitInfo: \(myFruit?.rawValue), size = \(myFruitSize?.rawValue)"
    }
}

print(Fruit.RedFruit.strawberry)
print(Fruit.RedFruit.Size.big.rawValue)

var fruit = Fruit()
fruit.myFruit = Fruit.RedFruit.watermelon
fruit.myFruitSize = Fruit.RedFruit.Size.medium
//print("Buy this fruit: \(fruit)")
print(fruit.description)
