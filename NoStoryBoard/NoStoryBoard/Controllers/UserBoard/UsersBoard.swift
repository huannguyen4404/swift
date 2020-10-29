//
//  UsersBoard.swift
//  NoStoryBoard
//
//  Created by Revu Corp on 10/28/20.
//

import UIKit

class UsersBoard: UIViewController {
    
    var users: [User] = []
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Users board"
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let boardCell = UINib(nibName: "BoardCell", bundle: .main)
        collectionView.register(boardCell, forCellWithReuseIdentifier: "cell")
        
        let headerBoard = UINib(nibName: "BoardHeader", bundle: .main)
        collectionView.register(headerBoard, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header")
        
        users = User.getDummyData()
    }
}

extension UsersBoard: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        users.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! BoardCell
        
        let item = users[indexPath.row]
        cell.nameLabel.text = item.name
        cell.avatarImgView.image = UIImage(named: item.avatar)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailVC = DetailViewController()
        let user = users[indexPath.row]
        detailVC.name = user.name
        
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    // Not worked
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 50)
    }
    
    // Not worked
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let reusableview = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header", for: indexPath) as! BoardHeader
            
            reusableview.frame = CGRect(x: 0 , y: 0, width: self.view.frame.width, height: 50)
            
            reusableview.titleLabel.text = "Users"
            reusableview.totalLabel.text = "\(users.count)"
            
            return reusableview
        default:
            fatalError("Unexpected element kind")
        }
    }
    
}
