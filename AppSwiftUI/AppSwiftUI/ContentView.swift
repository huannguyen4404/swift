//
//  ContentView.swift
//  AppSwiftUI
//
//  Created by Revu Corp on 10/15/20.
//  Copyright © 2020 Henry. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, World!")
                NavigationLink(destination: ViewControllerRepresentation()) {
                    Text("Move to View Controller")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
