import UIKit

let welcome = """
    Hello, I am Heny
"That is tutorial"
"""

//let blankString = ""
let blankString = String()
print(blankString)
if (blankString.isEmpty) {
    print("It's empty")
}

var sushi = "🍤+🍣"
sushi += "=🤤"
print(sushi)
//for character in sushi {
//    print("character \(character)")
//}
let asterisk = "*"
sushi.append(asterisk)
print(sushi)

let width = 10
let squareArea = "SquareArea: \(width*width)"

let unicode = "\u{2602}"
print(unicode)

let greetingStr = "Hi, how are you?"
//print(greetingStr[greetingStr.startIndex])
//print(greetingStr[greetingStr.index(before: greetingStr.endIndex)])
//print(greetingStr[greetingStr.index(after: greetingStr.startIndex)])
/*
for index in greetingStr.indices {
    print("greetingChar: \(greetingStr[index])")
}
*/

// sushi.insert("?", at: sushi.endIndex)
sushi.insert(contentsOf: "😍", at: sushi.index(before: sushi.endIndex))
print(sushi)

let exampleStr = "Tony Stark: I am Ironman"
let idxFrom = exampleStr.startIndex
let idxTo = exampleStr.index(exampleStr.startIndex, offsetBy: 5)
let subStr1 = exampleStr[idxFrom...idxTo]
let subStr2 = String(subStr1)

let detectingStr = "Henry is learning Swift."
detectingStr.hasPrefix("Henry-nim") // no '-nim'
detectingStr.lowercased().hasSuffix("swift.")
