//
//  Bike.swift
//  MotorShow
//
//  Created by Revu Corp on 10/16/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import Foundation

struct MotoBike: Identifiable {
    let id: Int
    let name: String
    let cc: Double
    let imageName: String
    let inStock: Bool
    
    static func all() -> [MotoBike] {
        return [
            MotoBike(id: 1, name: "CBR1000RR", cc: 1000, imageName: "CBR1000RR", inStock: true),
            MotoBike(id: 2, name: "CB1000R", cc: 1000, imageName: "CB1000R", inStock: false),
            MotoBike(id: 3, name: "CB250R", cc: 250, imageName: "CB250R", inStock: true),
            MotoBike(id: 4, name: "2021 YZF-R1M", cc: 1000, imageName: "R1M", inStock: false),
            MotoBike(id: 5, name: "2021 YZF-R3", cc: 300, imageName: "R3", inStock: true),
            MotoBike(id: 6, name: "CBR500R", cc: 500, imageName: "cbr500r", inStock: true),
            MotoBike(id: 7, name: "2021 YZF-R6", cc: 600, imageName: "R6", inStock: true),
            MotoBike(id: 8, name: "2020 Ninja 400", cc: 600, imageName: "ninja400", inStock: true),
            MotoBike(id: 9, name: "Ninja 650", cc: 600, imageName: "Ninja650", inStock: false),
            MotoBike(id: 10, name: "NINJA ZX-10R", cc: 980, imageName: "zx10R", inStock: true)
        ]
    }
}
