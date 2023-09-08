//
//  ContentView.swift
//  tabby cat
//
//  Created by TokaJaber on 08/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CatFactsView()
                .tabItem {
                    Label("Cat Facts", systemImage: "lightbulb")
                }
            CatImagesView()
                .tabItem {
                    Label("random cat", systemImage: "photo")
                }
            CatBounceView()
                .tabItem {
                    Label("Bounce cat", systemImage: "arrowshape.bounce.right")
                }
            CatGalleryView()
                .tabItem {
                    Image(systemName: "photo.stack")
                    Text("cat gallery ")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
