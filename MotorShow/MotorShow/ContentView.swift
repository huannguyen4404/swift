//
//  ContentView.swift
//  MotorShow
//
//  Created by Revu Corp on 10/16/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: FilterList()) {
                    Text("Show list sport bikes")
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
