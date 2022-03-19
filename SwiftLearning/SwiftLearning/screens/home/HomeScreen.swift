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
