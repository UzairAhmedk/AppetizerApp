//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Uzair Ahmed on 2024-06-09.
//

import SwiftUI

final class imageLoader: ObservableObject {
    
    @Published var image: Image? = nil
    
    func load(FromURLString urlString: String) {
        NetworkManager.shared.downloadImage(fromURLString: urlString) { uiImage in
            guard let uiImage = uiImage else {
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
    
    @StateObject var ImageLoader = imageLoader()
    let urlString: String
    
    var body: some View {
        RemoteImage(image: ImageLoader.image)
            .onAppear() { ImageLoader.load(FromURLString: urlString) }
    }
}
