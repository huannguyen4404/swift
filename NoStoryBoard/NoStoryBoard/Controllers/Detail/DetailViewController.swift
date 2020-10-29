//
//  DetailViewController.swift
//  NoStoryBoard
//
//  Created by Revu Corp on 10/27/20.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Detail"
        
        nameLabel.text = name
    }

}
