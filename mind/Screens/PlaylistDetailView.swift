//
//  PlaylistDetailView.swift
//  mind
//
//  Created by tasneem daloun on 17/10/23.
//

import Foundation
import SwiftUI

struct PlaylistDetailView: View {
    let playlist: Playlist
    
    var body: some View {
          GeometryReader { proxy in
              ZStack {
                  VStack {
                      Image(playlist.coverImage)
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(maxWidth: .infinity, maxHeight: proxy.size.width)
                          .cornerRadius(10)
                          .padding()
                      Text(playlist.title)
                          .font(.largeTitle)
                          .padding(.bottom, 10)
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis massa et eros volutpat posuere a vel nisl.")
                          .font(.subheadline)
                          .foregroundColor(.gray)
                          .padding()
                      Spacer()
                  }
              }
              .navigationTitle(playlist.title)
              .edgesIgnoringSafeArea(.bottom)
          }
      }
}

struct PlaylistDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistDetailView(playlist: Playlist(title: "Chill Hits", coverImage: "Chill"))
    }
}
