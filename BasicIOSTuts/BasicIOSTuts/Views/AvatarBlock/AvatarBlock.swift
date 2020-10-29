//
//  AvatarBlock.swift
//  BasicIOSTuts
//
//  Created by Revu Corp on 10/23/20.
//

import UIKit

protocol AvatarBlockDelegate: class {
    func avatarBlock(avatarBlock:AvatarBlock, didSelectedWith index: Int)
}

protocol AvatarBlockDataSource: class {
    func avatarBlock(nameOf avatarBlock: AvatarBlock) -> String
    func avatarBlock(indexOf avatarBlock: AvatarBlock) -> Int
}

class AvatarBlock: UIView {
    
    weak var delegate: AvatarBlockDelegate?
    weak var dataSource: AvatarBlockDataSource?
    var index: Int = 0
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func tap(_ sender: Any) {
        if let delegate = delegate {
            delegate.avatarBlock(avatarBlock: self, didSelectedWith: index)
        }
    }
    
    func configView() {
        if let dataSource = dataSource {
            index = dataSource.avatarBlock(indexOf: self)
            nameLabel.text = dataSource.avatarBlock(nameOf: self)
        }
    }
}
