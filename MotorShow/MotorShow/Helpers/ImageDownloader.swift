//
//  ImageDownloader.swift
//  MotorShow
//
//  Created by Revu Corp on 10/16/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import Foundation
import Combine

class ImageDownloader: ObservableObject {
    @Published var imageData: Data?
    
    func downloadImage(url: String) {
        guard let imageUrl = URL(string: url) else {fatalError("Invalid URL")}
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: imageUrl)
            DispatchQueue.main.async {
                self.imageData = data
            }
        }
    }
}
