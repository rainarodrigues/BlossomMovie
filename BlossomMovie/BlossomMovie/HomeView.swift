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
        GeometryReader{ geo in
            ScrollView{
                LazyVStack{
                    VStack(){
                        AsyncImage(url: URL(string: heroTestTitle)) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .overlay{
                                    LinearGradient(
                                        stops: [Gradient.Stop(color: .clear, location: 0.8),
                                                Gradient.Stop(color: .gradient, location: 1)],
                                        startPoint: .top, endPoint: .bottom
                                    )
                                }
                        } placeholder: {
                            ProgressView()
                        }.frame(width: geo.size.width, height: geo.size.height * 0.85)
                        HStack{
                            Button{
                                
                            }label: {
                                Text(Constants.playStrig)
                                    .ghostButton()
                            }
                            
                            Button{
                                
                            }label: {
                                Text(Constants.downloadString)
                                    .ghostButton()
                            }
                        }
                        HorizontalListView(header: Constants.trendingTVString)
                        HorizontalListView(header: Constants.trendingMovieString)
                        HorizontalListView(header: Constants.topRatedMovieString)
                        HorizontalListView(header: Constants.topRatedTVString)
                        
                    }
                    .border(Color.red)
                }
            }
            .border(Color.green)
        }
    }
}

#Preview {
    HomeView()
}
