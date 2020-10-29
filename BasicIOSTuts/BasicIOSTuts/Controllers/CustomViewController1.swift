//
//  CustomView.swift
//  BasicIOSTuts
//
//  Created by Revu Corp on 10/22/20.
//

import UIKit

class CustomViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pikachu = MyView(frame: CGRect(x: 50, y: 100, width: 100, height: 125))
        pikachu.nameLabel?.text = "Pikachu"
        pikachu.avatarImageView?.image = UIImage(named: "pikachu")
        view.addSubview(pikachu)
        
        let eevee = MyView(frame: CGRect(x: 200, y: 100, width: 100, height: 125))
        eevee.nameLabel?.text = "Eevee"
        eevee.avatarImageView?.image = UIImage(named: "eevee")
        view.addSubview(eevee)
        
        
        let userView = Bundle.main.loadNibNamed("UserView", owner: self, options: nil)?.first as? UserView
        userView?.frame = CGRect(x:50, y: 250, width: 200, height: 200)
//        userView?.delegate = self
        view.addSubview(userView!)
    }
}

//extension CustomViewController: UserViewDelelegate {
//    func didTap(view: UserView, count: Int) {
//        print("Count = \(count)")
//    }
//}
