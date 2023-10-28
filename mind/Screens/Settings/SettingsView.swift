//
//  SettingsView.swift
//  mind
//
//  Created by tasneem daloun on 22/09/2023.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var isAlert = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
  
        
        NavigationStack{
            
            
            Form{
                
                Text("Edit pofile")
                NavigationLink {
                    PersonalInfoView()
                }label: {
                    Text("Personal Information")
                }
                NavigationLink{
                    NotificationView()
                }label: {
                    Text("Notification")
                }
                Text("log out")
                    .foregroundColor(.red)
                    .onTapGesture {
                        isAlert = true
                    }
                
                
            }
            .alert( "Are you sure you want to log out?",isPresented: $isAlert) {
                NavigationLink{
                    SignInView()
                }label: {
                   
                    Button("Yes", role: .destructive) {}
                }
                Button("No"){
                    dismiss()
                }
            }
            .navigationTitle("Settings")
            
            
            
        }
        
    }
    
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
