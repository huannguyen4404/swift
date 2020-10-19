//
//  ContentView.swift
//  CoffeeLove
//
//  Created by Revu Corp on 10/15/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(drinkMenu) { item in
                NavigationLink(destination: ItemDetail(item: item)) {
                    ItemRow(item: item)
                }
            }
            .navigationBarTitle(Text("Drinks"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
