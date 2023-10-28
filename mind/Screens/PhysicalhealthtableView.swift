//
//  ProfileView.swift
//  mind
//
//  Created by tasneem daloun on 22/09/2023.
//

import SwiftUI

struct PhysicalhealthtableView: View {
    @State private var playlists = [
        Playlist(title: "Benefits of drinking water", coverImage: "water"),
        Playlist(title: "Vegetables and Fruits", coverImage: "veggie"),
        Playlist(title: "Benefits of drinking water", coverImage: "water"),
        Playlist(title: "Vegetables and Fruits", coverImage: "veggie")
    ]
    
    var body: some View {
        List {
            ForEach(playlists) { playlist in
                PlaylistView(playlist: playlist)
            }
            .onDelete { indexSet in
                playlists.remove(atOffsets: indexSet)
            }
            .onMove { indices, newOffset in
                playlists.move(fromOffsets: indices, toOffset: newOffset)
            }
        }.navigationTitle("Physical Health")
            .toolbar {
                
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink{
                        PhysicalGrid()
                    }label: {
                        Image(systemName: "bookmark")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink{
              
                    }label: {
                        Image("hamburger")
                    }
                }
            }
        
    }
}

struct PlaylistView: View {
    let playlist: Playlist
    
    var body: some View {
        
        NavigationLink(destination: PlaylistDetailView(playlist: playlist)) {
            VStack {
                Image(playlist.coverImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: .infinity)
                    .cornerRadius(5)
                    .padding(.leading, 12)
                
                HStack {
                    Text(playlist.title)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .frame(width: .infinity)
                   
                    Button {
                        print("Add something")
                    } label: {
                        
                        Image(systemName: "heart")
               
                    }
                    .padding(.leading, 10)
                    Spacer()
                }
            }
            .padding(.vertical, 5)
            .listRowSeparator(.hidden)
        }
    }
}

struct Playlist: Identifiable {
    let id = UUID()
    let title: String
    let coverImage: String
}

struct PhysicalhealthtableView_Previews: PreviewProvider {
    static var previews: some View {
        PhysicalhealthtableView()
    }
}
