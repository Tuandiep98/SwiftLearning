//
//  BottomNavigationBar.swift
//  SwiftLearning
//
//  Created by Tuấn Điệp on 19/03/2022.
//

import SwiftUI

struct BottomNavigationBar: View {
    var body: some View {
            TabView {
                NavigationView{
                    HomeScreen()
                      .navigationBarTitle("Home", displayMode: .inline)  // << !!
                }
                .tabItem {
                    VStack{
                       Image(systemName: "house")
                       Text("Home")
                    }
                }
                 NavigationView{
                     AlbumScreen()
                       .navigationBarTitle("Albums", displayMode: .inline)  // << !!
                 }
                 .tabItem {
                     VStack{
                        Image(systemName: "square.stack")
                        Text("Albums")
                     }
                 }
                 NavigationView{
                     MoreScreen()
                       .navigationBarTitle("More", displayMode: .inline) // << !!
                 }
                 .tabItem {
                     VStack{
                         Image(systemName: "ellipsis")
                         Text("More")
                     }
                 }
             }
        }
}

struct BottomNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationBar()
    }
}
