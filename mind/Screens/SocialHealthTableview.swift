//
//  ProfileView.swift
//  mind
//
//  Created by tasneem daloun on 22/09/2023.
//

import SwiftUI

struct SocialHealthTableview: View {
  @State private var playlists = [
    Playlist2(title: "Benefits of drinking water", coverImage: "water"),
    Playlist2(title: "Vegetables and Fruits", coverImage: "veggie"),
    Playlist2(title: "Benefits of drinking water", coverImage: "water"),
    Playlist2(title: "Vegetables and Fruits", coverImage: "veggie")
  ]

  var body: some View {
    List {
      ForEach(playlists) { playlist in
        PlaylistView2(playlist2: playlist)
      }
      .onDelete { indexSet in
        playlists.remove(atOffsets: indexSet)
      }
      .onMove { indices, newOffset in
        playlists.move(fromOffsets: indices, toOffset: newOffset)
      }
    }.navigationTitle("Social Health")
              .toolbar {

                  
                  ToolbarItem(placement: .navigationBarTrailing) {
                      NavigationLink{
                         // SettingsView()
                      }label: {
                          Image("Search")
                      }
                  }
                  
                  ToolbarItem(placement: .navigationBarTrailing) {
                      NavigationLink{
                          PhysicalGrid()
                      }label: {
                          Image("bookmark")
                      }
                  }
                  
                  ToolbarItem(placement: .navigationBarTrailing) {
                      NavigationLink{
                         // SignInView()
                      }label: {
                          Image("hamburger")
                      }
                  }
              }
   // .navigationTitle("My Playlists")
   // .navigationBarItems(trailing: EditButton())
  }
}

struct PlaylistView2: View {
  let playlist2: Playlist2
    
  var body: some View {
      
    NavigationLink(destination: PlaylistDetailView2(playlist2: playlist2)) {
      VStack {
        Image(playlist2.coverImage)
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: UIScreen.main.bounds.width-70, height: 160)
          .cornerRadius(5)
          .padding(.leading, 12)
          
          HStack {
              Text(playlist2.title)
                .font(.headline)
                .frame(width: UIScreen.main.bounds.width-70, height: 30)
                .position(x: 120, y: 20)
                .lineLimit(1)
             
              Button {
                      
                  } label: {
                      Image("Fav")
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

struct Playlist2: Identifiable {
  let id = UUID()
  let title: String
  let coverImage: String
}

struct SocialHealthTableview_Previews: PreviewProvider {
    static var previews: some View {
        SocialHealthTableview()
    }
}
