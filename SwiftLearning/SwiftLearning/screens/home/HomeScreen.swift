//
//  HomeScreen.swift
//  SwiftLearning
//
//  Created by Tuấn Điệp on 19/03/2022.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack{
            FavouritesHorizonWidget()
            QuickView()
            Spacer()
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

struct FavouritesHorizonWidget: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
                Text("People you may know").padding()
            ScrollView(.horizontal){
                HStack(spacing: 10){
                    ForEach(0..<10){
                        index in ProfileView()
                    }
                }
            }
        }
    }
}
