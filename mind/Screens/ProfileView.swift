//
//  ProfileView.swift
//  mind
//
//  Created by tasneem daloun on 22/09/2023.
//

import SwiftUI

struct ProfileView: View {
    @State public var showWelcomeView = false
    @State public var showWelcomeView1 = false
    
    func button( _ type: String, colour: Color) -> some
    View{
        Button{
            print("whatever")
        } label: {
            VStack{
                colour
                    .frame(width: 130, height: 100)
                    .cornerRadius(30)
                Text("\(type)")
                    .padding(10)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                
            }
        }
    }
    var body: some View {
        NavigationStack {
            VStack (alignment: .center){
                
                Image("Shouta")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .cornerRadius(/*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                Text("@username")
                HStack {
                    
                    Button(action: { showWelcomeView = true }) {
                                      // Text("Login")
                                          Image(systemName: "heart")
                                   }
                    NavigationLink("", destination:  Favourites(), isActive: $showWelcomeView)
                  
                    .padding(20)
                    Button(action: { showWelcomeView1 = true }) {
                                      // Text("Login")
                                          Image(systemName: "bookmark")
                                   }
                    NavigationLink("", destination:  PhysicalGrid(), isActive: $showWelcomeView1)
                        
                    .padding(20)
                }
                HStack{
                    button("Physical Health", colour: Color("PhysicalColor"))
                    button("Mental Health", colour: Color("MentalColor"))
                    
                }
                HStack{
                    button("Social Health", colour: Color("SocialColor"))
                    button("Emotional Health", colour: Color("EmotionalColor"))
                    
                }
            } .navigationTitle("profile")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing){
                        NavigationLink{
                            SettingsView()
                        }label: {
                            Image(systemName: "gear")
                        }
                    }
                }
        }
    }
    
    
    
}


struct profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
