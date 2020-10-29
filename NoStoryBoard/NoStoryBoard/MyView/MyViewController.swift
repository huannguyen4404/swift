//
//  MyViewController.swift
//  NoStoryBoard
//
//  Created by Revu Corp on 10/26/20.
//

import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Middle Screen"

        let leftBtn = UIBarButtonItem(title: "Left", style: .plain, target: self, action: #selector(leftBtnAct))
        navigationItem.leftBarButtonItem = leftBtn
        
        let searchItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(searchTap))
        let bookmarkItem = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(bookmarkTap))
        let settingItem = UIBarButtonItem(image: UIImage(named: "settings"), style: .plain, target: self, action: #selector(iconBtnTap))
        navigationItem.rightBarButtonItems = [searchItem, bookmarkItem, settingItem]
        
        
        self.navigationController?.navigationBar.backgroundColor = .magenta
        self.navigationController?.navigationBar.tintColor = .systemRed
    }
    
    @objc func leftBtnAct() {
        print("Left button tapped.")
    }
    @objc func searchTap() {
        print("Search button tapped.")
    }
    @objc func bookmarkTap() {
        print("Bookmarked.")
    }
    @objc func iconBtnTap() {
        print("Icon button tapped.")
    }

    @IBAction func pop(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func push(_ sender: Any) {
        let vc = ThirdViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
