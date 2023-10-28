//
//  SignInView.swift
//  mind
//
//  Created by tasneem daloun on 22/09/2023.
//

import SwiftUI

struct SignInView: View {
    
    
    var body: some View {
        
        Home()
            .preferredColorScheme(.light)
    }
}
struct SignInView_previews:PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

struct Home: View {
    
    @State var email = ""
    @State var pass = ""
    
    var body: some View{
        
        GeometryReader{_ in
            
            VStack{
                Image("myapp")
                    .resizable()
                    .frame(width:100,height: 100)
                VStack{
                    
                    
                    HStack{
                        
                        
                        Text("Login")
                            .foregroundColor(.black)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        
                        Spacer(minLength: 0)
                        
                    }
                    .padding(.top, 40)
                    
                    
                    VStack{
                        HStack(spacing:15){
                            
                            Image(systemName: "envelope.fill")
                                .foregroundColor(Color.gray)
                            
                            TextField("Email Address", text: self.$email)
                        }
                        
                        Divider().background(Color.white.opacity(0.5))
                    }
                    .padding(.horizontal)
                    .padding(.top, 40)
                    
                    VStack{
                        HStack(spacing:15){
                            
                            Image(systemName: "eye.slash.fill")
                                .foregroundColor(Color.gray)
                            
                            SecureField("Password", text: self.$pass)
                        }
                        
                        Divider().background(Color.white.opacity(0.5))

                            .padding()
                        NavigationLink(destination: ContentView()){
                            Text("Log In")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("MentalColor"))
                                .cornerRadius(50)
                                .font(.title2)
                        }
                            
                           
                    }
                    
                    .padding(.horizontal)
                    .padding(.top, 30 )
                    
                    HStack{
                        Spacer(minLength: 0)
                       
                        Button(action: {
    
                        })
                        {
                            Text("Forget Password?")
                                .foregroundColor(Color.black.opacity(0.6))

                        }
                
                    }
                    
                    .padding(.horizontal)
                    .padding(.top, 30 )
                }
                
                
            }
            
        }
        
        
    }
    
    
}
