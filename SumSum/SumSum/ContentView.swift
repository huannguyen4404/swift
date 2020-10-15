//
//  ContentView.swift
//  SumSum
//
//  Created by Revu Corp on 10/15/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var num01: String = ""
    @State private var num02: String = ""
    @State private var sum:Int = 0
    
    var body: some View {
        VStack {
            Text("\(sum)").font(.largeTitle)
            
            TextField("Number 01:", text: $num01)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
                    .foregroundColor(.blue))
                .padding(.horizontal)
            
            TextField("Number 02:", text: $num02)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
                    .foregroundColor(.blue))
                .padding(.horizontal)
            
            Button(action: {
                self.sum = Int(self.num01)! + Int(self.num02)!
            }, label: {
                Text("Yolo")
                Image(systemName: "play")
            })
            .padding().background(Color.blue)
            .cornerRadius(10).foregroundColor(Color.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
