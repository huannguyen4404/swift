//
//  MenuRow.swift
//  CoffeeLove
//
//  Created by Revu Corp on 10/15/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    
    var item: Drink
    
    var body: some View {
        HStack {
            Image(item.thumbName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 100, height: 100)
            Text(item.name)
                .font(.system(size:24))
                .fontWeight(.medium)
            Spacer()
        }
        
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: drinkMenu[1]).previewLayout(.fixed(width: 500, height: 100))
    }
}
