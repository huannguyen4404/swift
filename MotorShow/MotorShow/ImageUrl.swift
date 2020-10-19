//
//  ImageUrl.swift
//  MotorShow
//
//  Created by Revu Corp on 10/16/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct Constant {
    static let urlImg = "https://developer.apple.com/assets/elements/icons/swift/swift-64x64.png"
}

struct ImageUrl: View {
    @ObservedObject var downloader = ImageDownloader()
    
    var url: String
    
    init(url: String) {
        self.url = url
        self.downloader.downloadImage(url: self.url)
    }
    
    var body: some View {
        if let imgData = self.downloader.imageData {
            let img = UIImage(data: imgData)
            return Image(uiImage: img!)
        } else {
            return Image("waiting")
        }
    }
}

struct ImageUrl_Previews: PreviewProvider {
    static var previews: some View {
        ImageUrl(url: Constant.urlImg)
    }
}
