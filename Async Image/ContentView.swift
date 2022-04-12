//
//  ContentView.swift
//  Async Image
//
//  Created by Deepak kumar Dash on 12/04/22.
//

import SwiftUI

struct ContentView: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
//        Basic image view
//       AsyncImage(url: URL(string: imageURL))
        
//     Scaling images
        AsyncImage(url: URL(string: imageURL), scale: 3.0)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
