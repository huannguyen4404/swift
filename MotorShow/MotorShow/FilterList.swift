//
//  FilterList.swift
//  MotorShow
//
//  Created by Revu Corp on 10/16/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct FilterList: View {
    
    @State private var isInStock = true
    @State private var searchStr: String = ""
    
    let listBikes = MotoBike.all()
    
    var body: some View {
        List {
            Toggle(isOn: $isInStock) {
                Text("In Stock?")
            }
            
            SearchBar(searchStr: $searchStr)
            
            ForEach(listBikes.filter {
                self.searchStr.isEmpty
                    ? $0.inStock == isInStock
                    : $0.inStock == isInStock && $0.name.localizedStandardContains(searchStr)
            }) { bike in
                HStack {
                    Image(bike.imageName)
                        .resizable()
                        .frame(width: 120, height: 80)
                    Text(bike.name)
                    Spacer()
                    if bike.inStock {
                        Image("available")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                }
            }
        }
    }
}

struct FilterList_Previews: PreviewProvider {
    static var previews: some View {
        FilterList()
    }
}
