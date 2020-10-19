//
//  ItemDetail.swift
//  CoffeeLove
//
//  Created by Revu Corp on 10/15/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    var item: Drink
    
    var body: some View {
        VStack {
            Image(item.thumbName)
            .resizable()
                .aspectRatio(contentMode: .fit)
            .cornerRadius(10)
            .padding()
            Text(item.name)
                .font(.system(size:35))
                .fontWeight(.heavy)
                .foregroundColor(Color.yellow)
            Text("\(item.price, specifier: "%.f") VND")
                .font(.system(size:25))
                .fontWeight(.light)
                .foregroundColor(Color.black)
        }
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(item: drinkMenu[0])
    }
}
