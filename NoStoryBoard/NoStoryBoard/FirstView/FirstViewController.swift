//
//  FirstViewController.swift
//  NoStoryBoard
//
//  Created by Revu Corp on 10/26/20.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First VC"
        
        let backBtn = UIBarButtonItem(title: "Back", style: .plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backBtn
        self.navigationController?.navigationBar.backgroundColor = .cyan
        
        
        let navigationBarAppearance = UINavigationBar.appearance()
        navigationBarAppearance.tintColor = .magenta
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("View did disappear")
    }
    
    @IBAction func push(_ sender: Any) {
        let vc = MyViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
