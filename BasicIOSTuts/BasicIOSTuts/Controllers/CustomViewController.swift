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
        userView?.delegate = self
        view.addSubview(userView!)
        
        
        let avatarBlock = Bundle.main.loadNibNamed("AvatarBlock", owner: self, options: nil)?.first as! AvatarBlock
        avatarBlock.frame = CGRect(x: 100, y: 650, width: 125, height: 150)
        avatarBlock.index = 10
        avatarBlock.delegate = self
        avatarBlock.dataSource = self
        view.addSubview(avatarBlock)
        
        avatarBlock.configView()
    }
}

extension CustomViewController: UserViewDelegate, AvatarBlockDelegate {
    func avatarBlock(avatarBlock: AvatarBlock, didSelectedWith index: Int) {
        print("Did select UserView with index \(index)")
    }
    
    func didTapped(view: UserView, count: Int) {
        print("GOOD, received: tapped \(count) times.")
    }
}

extension CustomViewController: AvatarBlockDataSource {
    func avatarBlock(nameOf avatarBlock: AvatarBlock) -> String {
        return "Henry"
    }
    
    func avatarBlock(indexOf avatarBlock: AvatarBlock) -> Int {
        return 1990
    }
    
    
}
