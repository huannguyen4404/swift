import UIKit

var heroes: Set<String> = ["Zuka", "Emily", "Ryoma", "Yorn", "Tel Annas", "Violet"]

if (heroes.isEmpty) {
    print("No heroes")
} else {
    print("There are \(heroes.count) heroes.")
}
heroes.insert("Veera")
heroes.remove("Tel Annas")
print(heroes.sorted())

if (heroes.contains("Krixi")){
    print("Krixi is available")
} else {
    print("Krixi is coming soon")
}

for hero in heroes {
    print("Hero: \(hero)")
}

let set1: Set = [1,2,3,4,5,6,7]
let set2: Set = [9,10,3,4,11,12,13]
// set1.intersection(set2).sorted()
// set1.union(set2).sorted()
//set1.subtracting(set2).sorted()
//set1.symmetricDifference(set2)


let balls:Set = ["⚽️","🏀","⚾️","🥎","🎾","🏐"]
let ballAndMedals:Set = ["⚽️","🏀","⚾️","🥎","🎾","🏐", "🥇", "🥈", "🥉"]
let animals:Set = ["🐼", "🐯", "🐶", "🐉"]
ballAndMedals.isSuperset(of: balls)
balls.isSubset(of: ballAndMedals)
balls.isDisjoint(with: animals)
