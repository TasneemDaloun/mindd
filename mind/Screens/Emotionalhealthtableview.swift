//
//  ProfileView.swift
//  mind
//
//  Created by tasneem daloun on 22/09/2023.
//

import SwiftUI

struct Emotionalhealthtableview: View {
  @State private var playlists = [
    Playlist3(title: "What is emotional health and well-being", coverImage: "water"),
    Playlist3(title: "Vegetables and Fruits", coverImage: "veggie"),
    Playlist3(title: "Benefits of drinking water", coverImage: "water"),
    Playlist3(title: "Vegetables and Fruits", coverImage: "veggie")
  ]

  var body: some View {
    List {
      ForEach(playlists) { playlist in
        PlaylistView3(playlist3: playlist)
      }
      .onDelete { indexSet in
        playlists.remove(atOffsets: indexSet)
      }
      .onMove { indices, newOffset in
        playlists.move(fromOffsets: indices, toOffset: newOffset)
      }
    }.navigationTitle("Emotional Health")
              .toolbar {
                  
                  ToolbarItem(placement: .navigationBarTrailing) {
                      NavigationLink{
                          PhysicalGrid()
                      }label: {
                          Image("bookmark")
                      }
                  }
                  

              }
  }
}

struct PlaylistView3: View {
  let playlist3: Playlist3
    
  var body: some View {
      
    NavigationLink(destination: PlaylistDetailView3(playlist3: playlist3)) {
      VStack {
        Image(playlist3.coverImage)
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: UIScreen.main.bounds.width-70, height: 160)
          .cornerRadius(5)
          .padding(.leading, 12)
          
          HStack {
              Text(playlist3.title)
                .font(.headline)
                .frame(width: UIScreen.main.bounds.width-70, height: 30)
                .position(x: 90, y: 20)
                .lineLimit(1)
             
              Button {
                
                  } label: {
                      Image(systemName: "heart")
                  }
                .padding(.leading, 12)
              Spacer()
          }
      }
      .padding(.vertical, 5)
      .listRowSeparator(.hidden)
    }
  }
}

struct Playlist3: Identifiable {
  let id = UUID()
  let title: String
  let coverImage: String
}

struct Emotionalhealthtableview_Previews: PreviewProvider {
    static var previews: some View {
        Emotionalhealthtableview()
    }
}
