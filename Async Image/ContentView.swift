//
//  ContentView.swift
//  Async Image
//
//  Created by Deepak kumar Dash on 12/04/22.
//

import SwiftUI
extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth:128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct ContentView: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
//        BASIC IMAGE VIEW
//       AsyncImage(url: URL(string: imageURL))
        
//    SCALING IMAGES
//        AsyncImage(url: URL(string: imageURL), scale: 3.0)
        
//        PLACEHOLDER
//        AsyncImage(url: URL(string: imageURL), scale: 2.0) {
//            image in image.imageModifier()
//        } placeholder: {
//            Image(systemName: "photo.circle.fill").icon
//        }
//        .padding(40)
        
//        PHASE
        AsyncImage(url: URL(string: imageURL)) { phase in
            if let image = phase.image {
                image.imageModifier()
            } else if phase.error != nil {
                Image(systemName: "ant.circle.fill").iconModifier()
            } else {
                Image(systemName: "photo.circle.fill").iconModifier()
            }
        }
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
