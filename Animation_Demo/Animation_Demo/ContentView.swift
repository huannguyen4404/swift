//
//  ContentView.swift
//  Animation_Demo
//
//  Created by Revu Corp on 10/15/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimated:Bool = false
    
    @State private var rotation:Double = 0.0
    
    var body: some View {
        VStack {
            NotificationView()
                .offset(y:isAnimated ? -UIScreen.main.bounds.height / 20 : UIScreen.main.bounds.height)
                .animation(.interpolatingSpring(mass: 1, stiffness: 80, damping: 20, initialVelocity: 0))
            
            HStack {
                Text("🏂")
                    .font(.custom("Arial", size: 100))
                    .offset(x: isAnimated ? UIScreen.main.bounds.width - 100 : 0)
                    //.animation(.spring())
                    .animation(.interpolatingSpring(mass: 1, stiffness: 10, damping: 10, initialVelocity: 0))
                Spacer()
            }
            
            Button("Play") {
                self.isAnimated.toggle()
            }
            Spacer()
            
            
            Slider(value: $rotation, in: 0...360, step: 1.0)
            Image("sea")
                .resizable()
                .frame(width: 350, height: 100)
                .mask(Text("HENRY").font(Font.system(size: 50).weight(.black)))
                .rotationEffect(.degrees(rotation), anchor: .center)
//                .scaleEffect(x: 2, y: 2, anchor: .topLeading)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
