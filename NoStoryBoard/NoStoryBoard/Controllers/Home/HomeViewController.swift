//
//  HomeViewController.swift
//  NoStoryBoard
//
//  Created by Revu Corp on 10/27/20.
//

import UIKit

class HomeViewController: UIViewController {
    
    var titles: [String] = ["iOS", "Android"]
    
    var names: [[String]] = [
        ["Thomas", "Dom", "Nelson", "Hector", "Henry", "Andy"],
        ["Bình", "Khánh", "Toàn", "Tâm", "An", "Hương", "Huy", "Quang", "Vân", "Tiến"]
    ]
    
    var users: [User] = []

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Home"
        let boardItem = UIBarButtonItem(image: UIImage(systemName: "square.grid.3x3.fill"), style: .plain, target: self, action: #selector(switchToBoard))
        navigationItem.rightBarButtonItems = [boardItem]
        
//        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        let nib = UINib(nibName: "HomeCell", bundle: .main)
        tableview.register(nib, forCellReuseIdentifier: "cell")
        
        tableview.delegate = self
        tableview.dataSource = self
        
        users = User.getDummyData()
    }
    
    @objc func switchToBoard() {
        self.navigationController?.pushViewController(UsersBoard(), animated: true)
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
//        return names.count
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return names[section].count
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = names[indexPath.section][indexPath.row]
//
//        let subTitle = UILabel(frame: CGRect(x: 20, y: 30, width: 100, height: 20))
//        subTitle.text = "Real Name"
//        subTitle.textColor = .systemIndigo
//        cell.addSubview(subTitle)
        
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeCell
        let user = users[indexPath.row]
        cell.nameLabel.text = user.name
        cell.subTitleLabel.text = user.getShortDesc()
        cell.avatarImageView.image = UIImage(named: user.avatar)
        
        return cell
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return titles[section]
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailViewController()
        
//        detailVC.name = names[indexPath.section][indexPath.row]
        let user = users[indexPath.row]
        detailVC.name = user.name
        
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}
