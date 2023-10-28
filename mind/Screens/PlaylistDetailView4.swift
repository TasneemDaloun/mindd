//
//  PlaylistDetailView.swift
//  mind
//
//  Created by tasneem dalounq on 17/10/23.
//

import Foundation
import SwiftUI

struct PlaylistDetailView4: View {
    let playlist4: Playlist4
    
    var body: some View {
          GeometryReader { proxy in
              ZStack {
                  VStack {
                      Image(playlist4.coverImage)
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(maxWidth: .infinity, maxHeight: proxy.size.width)
                          .cornerRadius(10)
                          .padding()
                      Text(playlist4.title)
                          .font(.largeTitle)
                          .padding(.bottom, 10)
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis massa et eros volutpat posuere a vel nisl.")
                          .font(.subheadline)
                          .foregroundColor(.gray)
                          .padding()
                      Spacer()
                  }
              }
              .navigationTitle(playlist4.title)
              .edgesIgnoringSafeArea(.bottom)
          }
      }
}

struct PlaylistDetailView4_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistDetailView4(playlist4: Playlist4(title: "Chill Hits", coverImage: "Chill"))
    }
}
