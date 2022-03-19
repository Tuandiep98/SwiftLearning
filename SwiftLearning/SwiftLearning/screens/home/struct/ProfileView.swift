//
//  ProfileView.swift
//  SwiftLearning
//
//  Created by Tuấn Điệp on 19/03/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("people")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, alignment: .center)
            HStack{
                VStack(alignment: .leading){
                    Text("Michel Reed").font(.headline)
                    Text("Technical leader at NASA").font(.subheadline)
                }
            }
            .padding()
            .foregroundColor(.primary)
            .background(Color.primary.colorInvert().opacity(0.75))
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct FavouritesHorizonWidget: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack{
                Text("People you may know").padding()
//                Image(systemName: "chevron.forward")
            }
                
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
