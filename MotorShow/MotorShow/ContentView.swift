//
//  ContentView.swift
//  MotorShow
//
//  Created by Revu Corp on 10/16/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI
import DynamicColor

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                ImageUrl(url: "https://developer.apple.com/assets/elements/icons/swift/swift-64x64.png")

                NavigationLink(destination: FilterList()) {
                    Text("Show list sport bikes")
                        .foregroundColor(Color(hexString: "#e74c3c"))
                }.padding()
                
                NavigationLink(destination: ListHorizontal()) {
                    Text("List horizontal")
                }.padding()
                
                NavigationLink(destination: Setting()) {
                    Text("App Settings")
                }.padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
