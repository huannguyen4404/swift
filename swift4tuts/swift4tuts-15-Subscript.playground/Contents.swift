import UIKit

struct MultiplicationTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let mt = MultiplicationTable(multiplier: 4)
/*
for i in 1...10 {
    print("\(i) * 4 = \(mt[i])")
}
*/
//mt[2] = 100  // read-only, can not set

struct FruitMatrix {
    var fruits = [
        ["🍎", "🍐", "🍊", "🍋", "🥭"],
        ["🍉", "🍇", "🍌", "🥥", "🥒"],
        ["🍓", "🍒", "🥝", "🍑"]
    ]
    subscript(row:Int, col:Int) -> String {
        get {
            assert(fruits[row][col] != nil, "Fruit not found.")
            return fruits[row][col]
        }
        set {
            assert(fruits[row][col] != nil, "No slot to set.")
            fruits[row][col] = newValue
        }
    }
}
var fruits = FruitMatrix()
fruits[2, 1]
fruits[1, 4] = "X"
print(fruits)
