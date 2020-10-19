//
//  ViewController.swift
//  AppUIKit
//
//  Created by Revu Corp on 10/14/20.
//  Copyright © 2020 Henry. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

struct ViewControllerRepresentation: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerRepresentation>) -> ViewController {
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController") as! ViewController
    }
    
    func updateUIViewController(_ uiViewController: ViewController, context: UIViewControllerRepresentableContext<ViewControllerRepresentation>) {
        
    }
}
