//
//  CatFactsView.swift
//  tabby cat
//
//  Created by TokaJaber on 08/09/2023.
//

import SwiftUI

struct CatFactsView: View {
    
    @StateObject var catFactsManager =
    CatFactsManger()
    
    var body: some View {
        VStack {
            if let catFact = catFactsManager.catFact {
                Text(catFact.fact)
                    .padding()
            } else {
                ProgressView()
                    .progressViewStyle(.circular)
            }
                
        }
            .onAppear {
                catFactsManager.getCatFact()
            }
    }
}

struct CatFactsView_Previews: PreviewProvider {
    static var previews: some View {
        CatFactsView()
    }
}
