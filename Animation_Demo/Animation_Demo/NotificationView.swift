//
//  NotificationView.swift
//  Animation_Demo
//
//  Created by Revu Corp on 10/15/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        Text("Notification")
        .padding()
            .frame(width: UIScreen.main.bounds.width-20, height: 100)
            .background(Color.red)
            .foregroundColor(Color.white)
        .cornerRadius(20)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
