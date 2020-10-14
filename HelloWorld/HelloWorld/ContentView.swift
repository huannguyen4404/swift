//
//  ContentView.swift
//  HelloWorld
//
//  Created by Revu Corp on 10/14/20.
//  Copyright © 2020 Henry. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    @State private var number = 0
    @State private var name = "Alex"
    @State private var stepNum = 2.0
    @State private var tempurate: Double = 0
    @State private var isShowView2 = false
    
    var alert:Alert {
        Alert(
            title: Text("SwiftUI"),
            message: Text("Tutorial about SwiftUI: Alert"),
            dismissButton: .default(Text("OK"))
        )
    }
    
    var body: some View {
        VStack {
            Button(action: {
                self.isShowView2 = true
            }, label: {
                HStack {
                    Image(systemName: "play")
                    Text("Send name to View02")
                }
            }).sheet(isPresented: $isShowView2, content: {
                View02(message: self.$name, switchedView: self.$isShowView2)
            })
            
            Slider(value: $tempurate, in: 0...40)
            Text("Tempurate: \(tempurate, specifier: "%.2f") C degree")
            
            
            Stepper(value: $stepNum, in: 2...10, step: 0.5) {
                Text("\(stepNum, specifier: "%.2f")")
            }
            
            
            Text("\(name)").font(.title)
            TextField("Input your name here", text: $name )
                .frame(width: 300, height: 50, alignment: .center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            
            Text("\(number)").font(.largeTitle)
            
            Button(action: {
                self.number = 1
            }, label: {
                Text("Button 1")
            }).background(Color.red)
            
            Button(action: {
                self.number = 2
            }, label: {
                Text("Button 2")
            }).background(Color.green)
            
            
            ZStack(alignment: .bottom) {
                Image("lantern").resizable().frame(width: 400.0, height: 250.0)
                HStack(alignment: .top, spacing: 0) {
                    Image("pikurate_small")
                        .resizable()
                        .frame(width: 50.0, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.red, lineWidth: 4))
                        .shadow(radius: 10)
                        .padding(10)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Spacer().frame(height: 10)
                        
                        Button(action: {
                            self.showAlert = true
                        }) {
                            Text("Show Alert")
                                .fontWeight(.bold)
                                .font(.title)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(Color.white)
                                .padding(10)
                                .border(Color.blue, width: 3)
                        }.alert(isPresented: $showAlert, content: {self.alert})
                        
                        Text("Henry is studying SwiftUI \n on Udemy.")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.red)
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                            .background(/*@START_MENU_TOKEN@*/Color.yellow/*@END_MENU_TOKEN@*/)
                    }.background(Color.green)
                    
                }.background(Color.yellow)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
