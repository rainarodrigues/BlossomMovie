//
//  HomeView.swift
//  BlossomMovie
//
//  Created by Raina Rodrigues de Lima on 17/03/25.
//

import SwiftUI

struct HomeView: View {
    var heroTestTitle: String = Constants.testTitleURL
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: heroTestTitle)) { image in
                image
                    .resizable().scaledToFit()
            } placeholder: {
                ProgressView()
            }
        }
    }
}

#Preview {
    HomeView()
}
