//
//  ProfileView.swift
//  mind
//
//  Created by tasneem daloun on 22/09/2023.
//

import SwiftUI

struct MentalhealthtableView: View {
  @State private var playlists = [
    Playlist1(title: "Positive health-talk", coverImage: "chill"),
    Playlist1(title: "Daily Remainder", coverImage: "indie"),
    Playlist1(title: "Positive health-talk", coverImage: "chill"),
    Playlist1(title: "Daily Remainder", coverImage: "indie")
  ]

  var body: some View {
    List {
      ForEach(playlists) { playlist in
        PlaylistView1(playlist1: playlist)
      }
      .onDelete { indexSet in
        playlists.remove(atOffsets: indexSet)
      }
      .onMove { indices, newOffset in
        playlists.move(fromOffsets: indices, toOffset: newOffset)
      }
    }.navigationTitle("Mental Health")
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

struct PlaylistView1: View {
  let playlist1: Playlist1
    
  var body: some View {
      
    NavigationLink(destination: PlaylistDetailView1(playlist1: playlist1)) {
      VStack {
        Image(playlist1.coverImage)
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: UIScreen.main.bounds.width-70, height: 160)
          .cornerRadius(5)
          .padding(.leading, 12)
          
          HStack {
              Text(playlist1.title)
                .font(.headline)
                .frame(width: UIScreen.main.bounds.width-70, height: 30)
                .position(x: 90, y: 20)
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

struct Playlist1: Identifiable {
  let id = UUID()
  let title: String
  let coverImage: String
}

struct MentalhealthtableView_Previews: PreviewProvider {
    static var previews: some View {
        MentalhealthtableView()
    }
}
