//
//  Setting.swift
//  MotorShow
//
//  Created by Revu Corp on 10/16/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct Setting: View {
    @State private var username: String = ""
    @State private var notificationOn: Bool = false
    @State private var pickerIndex = 0
    
    var listOptions = ["Banner", "Sound", "None"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Info")) {
                    TextField("Username", text: $username)
                }
                
                Section(header: Text("Notification")) {
                    Toggle(isOn: $notificationOn.animation()) {
                        Text("Enable notification")
                    }
                    
                    if notificationOn {
                        Picker(selection: $pickerIndex, label: Text("Notification type")) {
                            ForEach(0 ..< listOptions.count) {
                                Text(self.listOptions[$0])
                            }
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                }
                
                Section {
                    Button(action: {
                        //
                    }) {
                        Text("Save")
                    }
                }
            }.navigationBarTitle(Text("Settings"))
        }
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
