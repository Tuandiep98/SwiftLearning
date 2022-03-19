//
//  QuickView.swift
//  SwiftLearning
//
//  Created by Tuấn Điệp on 19/03/2022.
//

import SwiftUI

struct QuickView: View {
    var body: some View {
        HorizonalItems()
    }
}

struct QuickView_Previews: PreviewProvider {
    static var previews: some View {
        QuickView()
    }
}

struct HorizonalItems: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Quick view").font(.subheadline).padding()
                Image(systemName: "chevron.forward")
            }
            ScrollView(.vertical) {
                ForEach(0..<10){
                    index in QuickItem()
                }
            }
        }
    }
}

struct QuickItem: View {
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Image("no-image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(alignment: .center)
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.").font(.subheadline)
        }.frame(height: 100).padding()
    }
}
