//
//  MyView.swift
//  BasicIOSTuts
//
//  Created by Revu Corp on 10/22/20.
//

import UIKit

class MyView: UIView {
    var avatarImageView: UIImageView?
    var nameLabel: UILabel?
    var markButton: UIButton?
    var count = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .green
        
        // add user avatar
        avatarImageView = UIImageView(image: UIImage(named: "no_avatar"))
        avatarImageView!.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height*4/5)
        avatarImageView!.contentMode = .scaleAspectFit
        self.addSubview(avatarImageView!)
        
        // add username
        nameLabel = UILabel(frame: CGRect(
                                x: 0,
                                y: frame.size.height*4/5,
                                width: frame.size.width,
                                height: frame.size.height/5))
        nameLabel!.text = "Henry"
        nameLabel!.backgroundColor = .lightGray
        nameLabel!.textAlignment = .center
        nameLabel!.textColor = .blue
        self.addSubview(nameLabel!)
        
        // add button
        markButton = UIButton(frame: CGRect(x: 0,
                                            y: 0,
                                            width: frame.size.width,
                                            height: frame.size.height))
        markButton!.backgroundColor = .clear
        markButton?.addTarget(self, action: #selector(handleTap), for: .touchUpInside)
        self.addSubview(markButton!)
    }
    
    @objc func handleTap() {
        count += 1
        nameLabel?.text = "\(count)"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
