//
//  ViewController.swift
//  BasicIOSTuts
//
//  Created by Revu Corp on 10/21/20.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var avatar: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set title
        titleLbl.text = "Matching 😍"
        
        // add avatar
        let frame = CGRect(x: 50, y: 100, width: 100, height: 100)
        let userAvatar = UIImageView(image: UIImage(named: "no_avatar"))
        userAvatar.frame = frame
        userAvatar.contentMode = .scaleToFill
        view.addSubview(userAvatar)
        
        // add user name
        let userName = UILabel(frame: CGRect(x: 50, y: 200, width: 100, height: 25))
        userName.text = "Henry"
        userName.backgroundColor = .lightGray
        userName.textAlignment = .center
        userName.textColor = .blue
        view.addSubview(userName)
        
        // add button
        let button = UIButton(frame: CGRect(x: 50, y: 100, width: 100, height: 120))
        button.backgroundColor = .clear
        button.addTarget(self, action: #selector(handleButtonPress), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc func handleButtonPress() {
        print("Henry, you clicked on button.")
    }
    
    @IBAction func handleTouched(_ sender: Any) {
        print("Tapped.")
    }
}

