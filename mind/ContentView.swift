//
//  ContentView.swift
//  mind
//
//  Created by tasneem daloun on 22/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView  {
            
            HomepageView()
                .tabItem {
                    Label("Homepage", systemImage: "house.fill")
                }
            NotificationView()
                .tabItem {
                    Label("Notification", systemImage: "bell.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
