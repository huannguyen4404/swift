//
//  ContentView.swift
//  Calculator
//
//  Created by Revu Corp on 10/15/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var displayTxt = ""
    @State private var storedValue = 0.0
    @State private var mathOp: String!
    
    var body: some View {
        VStack {
            HStack {
                Text(displayTxt)
                    .padding(2)
                    .frame(width: 250, height: 40, alignment: .trailing)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2).foregroundColor(Color.blue)
                    )
                    .font(.title)
                
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
            
            HStack { // 7 8 9 +
                Button(action: {
                    self.displayTxt += "7"
                }, label: {
                    Text("7")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                        .foregroundColor(.blue)
                })
                Button(action: {
                    self.displayTxt += "8"
                }, label: {
                    Text("8")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                        .foregroundColor(.blue)
                })
                Button(action: {
                    self.displayTxt += "9"
                }, label: {
                    Text("9")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                        .foregroundColor(.blue)
                })
                Button(action: {
                    self.mathOp = "+"
                    self.storedValue = Double(self.displayTxt)!
                    self.displayTxt = ""
                }, label: {
                    Text("+")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                        .foregroundColor(.blue)
                })
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
            
            HStack { // 4 5 6 -
                Button(action: {
                    self.displayTxt += "4"
                }, label: {
                    Text("4")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                        .foregroundColor(.blue)
                })
                Button(action: {
                    self.displayTxt += "5"
                }, label: {
                    Text("5")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                        .foregroundColor(.blue)
                })
                Button(action: {
                    self.displayTxt += "6"
                }, label: {
                    Text("6")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                        .foregroundColor(.blue)
                })
                Button(action: {
                    self.mathOp = "-"
                    self.storedValue = Double(self.displayTxt)!
                    self.displayTxt = ""
                }, label: {
                    Text("-")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                        .foregroundColor(.blue)
                })
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
            
            HStack { // 1 2 3 *
                Button(action: {
                    self.displayTxt += "1"
                }, label: {
                    Text("1")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                        .foregroundColor(.blue)
                })
                Button(action: {
                    self.displayTxt += "2"
                }, label: {
                    Text("2")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                        .foregroundColor(.blue)
                })
                Button(action: {
                    self.displayTxt += "3"
                }, label: {
                    Text("3")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                        .foregroundColor(.blue)
                })
                Button(action: {
                    self.mathOp = "*"
                    self.storedValue = Double(self.displayTxt)!
                    self.displayTxt = ""
                }, label: {
                    Text("*")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                        .foregroundColor(.blue)
                })
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
            
            HStack { // C 0 = /
                Button(action: {
                    self.displayTxt = ""
                }, label: {
                    Text("C")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                        .foregroundColor(.blue)
                })
                Button(action: {
                    self.displayTxt += "0"
                }, label: {
                    Text("0")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                        .foregroundColor(.blue)
                })
                Button(action: {
                    if self.mathOp == "+" {
                        self.displayTxt = "\(self.storedValue + Double(self.displayTxt)!)"
                    } else if self.mathOp == "-" {
                        self.displayTxt = "\(self.storedValue - Double(self.displayTxt)!)"
                    } else if self.mathOp == "*" {
                        self.displayTxt = "\(self.storedValue * Double(self.displayTxt)!)"
                    } else if self.mathOp == "/" {
                        self.displayTxt = "\(self.storedValue / Double(self.displayTxt)!)"
                    }
                    
                }, label: {
                    Text("=")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                        .foregroundColor(.blue)
                })
                Button(action: {
                    self.mathOp = "/"
                    self.storedValue = Double(self.displayTxt)!
                    self.displayTxt = ""
                }, label: {
                    Text("/")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                        .foregroundColor(.blue)
                })
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
