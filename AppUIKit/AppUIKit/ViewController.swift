//
//  ViewController.swift
//  AppUIKit
//
//  Created by Revu Corp on 10/14/20.
//  Copyright © 2020 Henry. All rights reserved.
//

import UIKit
import SwiftUI
import Combine

class ViewController: UIViewController {
    
    var handleEvent: AnyCancellable!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var myTextField: UITextField!
    @IBSegueAction func moveToSwiftUI(_ coder: NSCoder) -> UIViewController? {
        let text = myTextField.text ?? ""
        
        let delegate = ContenViewDelegate()
        handleEvent = delegate.didChange.sink { [weak self](delegate) in
            self?.myTextField.text = delegate.newValue
            self?.navigationController?.popViewController(animated: true)
            
        }
        
        return UIHostingController(coder: coder, rootView: ContentView(delegate: delegate, value: text))
    }
    

}

