//
//  PlaylistDetailView.swift
//  mind
//
//  Created by tasneem daloun on 17/10/23.
//

import Foundation
import SwiftUI

struct PlaylistDetailView1: View {
    let playlist1: Playlist1
    
    var body: some View {
          GeometryReader { proxy in
              ZStack {
                  VStack {
                      Image(playlist1.coverImage)
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(maxWidth: .infinity, maxHeight: proxy.size.width)
                          .cornerRadius(10)
                          .padding()
                      Text(playlist1.title)
                          .font(.largeTitle)
                          .padding(.bottom, 10)
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis massa et eros volutpat posuere a vel nisl.")
                          .font(.subheadline)
                          .foregroundColor(.gray)
                          .padding()
                      Spacer()
                  }
              }
              .navigationTitle(playlist1.title)
              .edgesIgnoringSafeArea(.bottom)
          }
      }
}

struct PlaylistDetailView1_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistDetailView1(playlist1: Playlist1(title: "Chill Hits", coverImage: "Chill"))
    }
}
