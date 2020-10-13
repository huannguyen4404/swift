import UIKit

let isHero:Bool = true
let check = !isHero

let (width, height) = (800, 600)
let greeting = "hello" + " world" + "!"
let remainder = 3 % 2

(3, "cat") > (3, "dog")

let isHD = (width, height) > (1280, 720) ? "is HD" : "not HD"
let age:Int? = nil
let myAge = age ?? 30

// for index in 1...5 {
for index in 1..<5 {
    print("index = \(index)")
}

let range = ...7
range.contains(8)

let animals = ["cat", "dog", "tiger", "lion"]
//for animal in animals[1...] {
for animal in animals[...2] {
    print("animal = \(animal)")
}

