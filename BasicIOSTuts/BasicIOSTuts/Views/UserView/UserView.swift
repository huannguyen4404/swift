//
//  UserView.swift
//  BasicIOSTuts
//
//  Created by Revu Corp on 10/22/20.
//

import UIKit

protocol UserViewDelegate: class {
    func didTapped(view: UserView, count: Int)
}

class UserView: UIView {
    
    var count = 0
    weak var delegate: UserViewDelegate?
    
    @IBOutlet weak var avatarImgView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBAction func handleTap(_ sender: Any) {
        count += 1
        nameLbl.text = "\(count)"
        
        if let delegate = delegate {
            delegate.didTapped(view: self, count: count)
        }
    }
}
