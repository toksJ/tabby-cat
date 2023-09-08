//
//  CatImagesView.swift
//  tabby cat
//
//  Created by TokaJaber on 08/09/2023.
//

import SwiftUI
import Subsonic

struct CatImagesView: View {
    
    @State var catURL = "https://catass.com/cat"
    
    
    
    var body: some View {
        
        VStack {
            Spacer()
            
        AsyncImage(url: URL(string: catURL)!) { image in
            image
                .resizable()
                .scaledToFit()
                .onAppear {
                    play(sound: "meow.m4a")
                }
            
        }  placeholder: {
            ProgressView()
        }
            Spacer()
            
            Button("Give me new cat!!") {
                catURL += "1"
                
            }
            .buttonStyle(.borderedProminent )
    }
    }
}

struct CatImagesView_Previews: PreviewProvider {
    static var previews: some View {
        CatImagesView()
    }
}
