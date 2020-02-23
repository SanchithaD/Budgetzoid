//
//  HomeScreen.swift
//  Budgetzoid
//
//  Created by Sanchitha Dinesh on 2/22/20.
//  Copyright © 2020 Sanchitha. All rights reserved.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView{
            List {
            NavigationLink(destination: Transactions()) {
                    HStack(alignment: .top){
                        VStack(alignment: .leading){
                            Text("Random Memory")
                                .foregroundColor(.white)
                                .font(Font.largeTitle)
                                .padding()
                                .background(Color.white.opacity(0.05))
                            Text("""
                    Here's a blast from the past! \
                    Click here to see a random picture from your photos!
                    """)
                                .font(Font.headline)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.white.opacity(0.05))
                        }.background(Color.black.opacity(0.3))
                            .background(Image("Memories")
                                .scaledToFit()
                                .padding(.all, 1))
                    }.background(Color.white)
                        .clipped()
                        .shadow(color: .black, radius: 5)
                        .padding(20.0)
                    
                }
                NavigationLink(destination: RootView(configuration: configuration)) {
                    HStack(alignment: .top){
                        VStack(alignment: .leading){
                            Text("Recreation")
                                .foregroundColor(.white)
                                .font(Font.largeTitle)
                                .padding()
                                .background(Color.white.opacity(0.05))
                            Text( """
                                                   Interactive games to help  strenghten the mind. \
                                                   These games are proven to boost memory, increase mobility, and entertain!
                                                   """)
                                .font(Font.headline)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.white.opacity(0.05))
                        }.background(Color.black.opacity(0.3))
                            .background(Image("Games")
                                .scaledToFit()
                                .padding(.all, 1))
                    }.background(Color.white)
                        .clipped()
                        .shadow(color: .black, radius: 5)
                        .padding(20.0)
                }
            }
        }
    }
}
    
    struct HomeScreen_Previews: PreviewProvider {
        static var previews: some View {
            HomeScreen()
        }
}
