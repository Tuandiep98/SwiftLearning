//
//  ProfileView.swift
//  SwiftLearning
//
//  Created by Tuấn Điệp on 19/03/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationLink(destination: ProfileDetailView()){
            ZStack(alignment: .bottom) {
                Image("no-image")
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

struct ProfileDetailView: View {
    var body: some View {
        VStack{
            HStack{
                Image("no-image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, alignment: .center)
                .clipShape(Circle())
                .padding()
                VStack(alignment: .leading, spacing: 20){
                    Text("Michel Reed").font(.headline)
                    Text("Technical leader at NASA").font(.subheadline)
                }
                .padding()
            }.frame(alignment: .leading)
            Divider()
            HStack{
                VStack(spacing: 5){
                    Text("Posts").font(.subheadline)
                    Text("1.3k").font(.headline)
                }.padding()
                Divider()
                VStack(spacing: 5){
                    Text("Likes").font(.subheadline)
                    Text("4.5k").font(.headline)
                }.padding()
                Divider()
                VStack(spacing: 5){
                    Text("Followers").font(.subheadline)
                    Text("20").font(.headline)
                }.padding()
            }.frame(height: 60, alignment: .center)
            Divider()
            VStack(alignment: .leading){
                Text("Funny videos daily is here..").padding()
                HStack{
                    Button(action: followFunc){
                        Label("Follow", systemImage: "heart.circle")
                    }.frame(width: 200).buttonStyle(RoundedRectangleButtonStyle())
                    Button(action: chatFunc){
                        Text("Chat")
                    }.buttonStyle(RoundedRectangleButtonStyle(labelColor: .black, backgroundColor: Color.init(hex: "#ecf0f1")))
                }.padding()
            }
            Divider()
            Spacer()
        }
        
    }
    
    func followFunc(){}
    func chatFunc(){}
}
