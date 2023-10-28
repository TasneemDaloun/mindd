//
//  PlaylistDetailView.swift
//  mind
//
//  Created by tasneem daloun on 17/10/23.
//

import Foundation
import SwiftUI

struct PlaylistDetailView3: View {
    let playlist3: Playlist3
    
    var body: some View {
          GeometryReader { proxy in
              ZStack {
                  VStack {
                      Image(playlist3.coverImage)
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(maxWidth: .infinity, maxHeight: proxy.size.width)
                          .cornerRadius(10)
                          .padding()
                      Text(playlist3.title)
                          .font(.largeTitle)
                          .padding(.bottom, 10)
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis massa et eros volutpat posuere a vel nisl.")
                          .font(.subheadline)
                          .foregroundColor(.gray)
                          .padding()
                      Spacer()
                  }
              }
              .navigationTitle(playlist3.title)
              .edgesIgnoringSafeArea(.bottom)
          }
      }
}

struct PlaylistDetailView3_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistDetailView3(playlist3: Playlist3(title: "Chill Hits", coverImage: "Chill"))
    }
}
