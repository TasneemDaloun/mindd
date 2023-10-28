//
//  ProfileView.swift
//  mind
//
//  Created by tasneem daloun on 22/09/2023.
//

import SwiftUI

struct Favourites: View {
    @State public var showWelcomeView = false

  @State private var playlists = [
    Playlist4(title: "Benefits of drinking water", coverImage: "water"),
    Playlist4(title: "Vegetables and Fruits", coverImage: "veggie"),
    Playlist4(title: "Benefits of drinking water", coverImage: "water"),
    Playlist4(title: "Vegetables and Fruits", coverImage: "veggie")
  ]

  var body: some View {
    List {
      ForEach(playlists) { playlist in
        PlaylistView4(playlist4: playlist)
      }
      .onDelete { indexSet in
        playlists.remove(atOffsets: indexSet)
      }
      .onMove { indices, newOffset in
        playlists.move(fromOffsets: indices, toOffset: newOffset)
      }
    }.navigationTitle("Favourites")
              .toolbar {
                  /*ToolbarItem(placement: .navigationBarTrailing){
                      NavigationLink{
                          SettingsView()
                      }label: {
                          Image(systemName: "gear")
                          Image(systemName: "gear")
                          Image(systemName: "gear")
                      }
                  }*/
                  
                  ToolbarItem(placement: .navigationBarTrailing) {
                      NavigationLink{
                          SettingsView()
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
                          SignInView()
                      }label: {
                          Image("hamburger")
                      }
                  }
              }
   // .navigationTitle("My Playlists")
   // .navigationBarItems(trailing: EditButton())
  }
}

struct PlaylistView4: View {
  let playlist4: Playlist4
    
  var body: some View {
      
    NavigationLink(destination: PlaylistDetailView4(playlist4: playlist4)) {
      VStack {
        Image(playlist4.coverImage)
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: UIScreen.main.bounds.width-70, height: 160)
          .cornerRadius(5)
          .padding(.leading, 12)
          
          HStack {
              Text(playlist4.title)
                .font(.headline)
                .frame(width: UIScreen.main.bounds.width-70, height: 30)
                .position(x: 90, y: 20)
                .lineLimit(1)
             
              Button {
                      
                  } label: {
                      Image("Favfill")
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

struct Playlist4: Identifiable {
  let id = UUID()
  let title: String
  let coverImage: String
}

struct Favourites_Previews: PreviewProvider {
    static var previews: some View {
        Favourites()
    }
}
