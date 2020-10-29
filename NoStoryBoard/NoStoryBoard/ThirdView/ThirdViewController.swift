//
//  ThirdViewController.swift
//  NoStoryBoard
//
//  Created by Revu Corp on 10/26/20.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        self.navigationController?.navigationBar.barTintColor = .orange
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue]
    }
    
    
    @IBAction func popCtl(_ sender: Any) {
        let vc = (self.navigationController?.viewControllers[1])!
        self.navigationController?.popToViewController(vc, animated: true)
    }
    
    @IBAction func popToRoot(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
