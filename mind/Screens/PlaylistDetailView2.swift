//
//  PlaylistDetailView.swift
//  mind
//
//  Created by tasneem daloun on 17/10/23.
//

import Foundation
import SwiftUI

struct PlaylistDetailView2: View {
    let playlist2: Playlist2
    
    var body: some View {
          GeometryReader { proxy in
              ZStack {
                  VStack {
                      Image(playlist2.coverImage)
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(maxWidth: .infinity, maxHeight: proxy.size.width)
                          .cornerRadius(10)
                          .padding()
                      Text(playlist2.title)
                          .font(.largeTitle)
                          .padding(.bottom, 10)
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis massa et eros volutpat posuere a vel nisl.")
                          .font(.subheadline)
                          .foregroundColor(.gray)
                          .padding()
                      Spacer()
                  }
              }
              .navigationTitle(playlist2.title)
              .edgesIgnoringSafeArea(.bottom)
          }
      }
}

struct PlaylistDetailView2_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistDetailView2(playlist2: Playlist2(title: "Chill Hits", coverImage: "Chill"))
    }
}
