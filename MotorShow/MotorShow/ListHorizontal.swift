//
//  ListHorizontal.swift
//  MotorShow
//
//  Created by Revu Corp on 10/16/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct ListHorizontal: View {
    
    let sportBikes = MotoBike.all()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(sportBikes) { bike in
                    CellImage(name: bike.imageName)
                }
            }
        }.padding()
    }
}

struct ListHorizontal_Previews: PreviewProvider {
    static var previews: some View {
        ListHorizontal()
    }
}

struct CellImage: View {
    var name: String
    var body: some View {
        Image(name)
            .resizable()
            .frame(width: 120, height: 75)
            .cornerRadius(10)
            
    }
}
