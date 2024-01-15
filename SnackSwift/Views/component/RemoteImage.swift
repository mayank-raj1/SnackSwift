//
//  RemoteImage.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-15.
//

import SwiftUI

final class ImageLoader: ObservableObject{
    @Published var image: Image? = nil
    
    func load(fromURL: String){
        NetworkManager.shared.downloadImg(url: fromURL) { uiImage in
            guard let uiImage = uiImage else{
                return
            }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct RemoteImage: View {
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}

struct AppetizerRemoteImage: View {
    @StateObject var imageLoader = ImageLoader()
    let imageURL: String
    var body: some View {
        RemoteImage(image: imageLoader.image).onAppear(perform: {
            imageLoader.load(fromURL: imageURL)
        })
    }
}
