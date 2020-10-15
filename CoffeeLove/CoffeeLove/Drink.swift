//
//  Drink.swift
//  CoffeeLove
//
//  Created by Revu Corp on 10/15/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import Foundation

struct Drink: Identifiable {
    var id: Int
    var name: String
    var price: Double
    var thumbName: String
}

let drinkMenu = [
    Drink(id: 1, name: "Lychee Tea", price: 39_000, thumbName: "1"),
    Drink(id: 2, name: "Golden Lotus Tea", price: 40_000, thumbName: "2"),
    Drink(id: 3, name: "Peach Lemongrass", price: 30_000, thumbName: "3"),
    Drink(id: 4, name: "Caramel Macchiato", price: 59_000, thumbName: "4"),
    Drink(id: 5, name: "Cappuccino", price: 52_000, thumbName: "5"),
    Drink(id: 6, name: "Latte", price: 54_000, thumbName: "6"),
    Drink(id: 7, name: "Green Tea Freeze", price: 49_000, thumbName: "7"),
    Drink(id: 8, name: "Cookies & Cream", price: 45_000, thumbName: "8"),
    Drink(id: 9, name: "Chocolate Freeze", price: 47_000, thumbName: "9"),
    Drink(id: 10, name: "Caramel Coffee Freeze", price: 49_000, thumbName: "10")
]
