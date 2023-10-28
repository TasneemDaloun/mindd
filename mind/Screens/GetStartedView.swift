//
//  GetStartedView.swift
//  mind
//
//  Created by tasneem daloun on 22/09/2023.
//

import SwiftUI

struct GetStartedView: View {
    var body: some View {
        NavigationView{
            VStack{
                
                Image("myapp")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
                    .cornerRadius(40)
                Text("**Welcome To Mindfully!**")
                    .font(.title3)
                    .italic()
                NavigationLink(destination: ContentView()){
                    ExtractedView(text: "Get Started")
                }
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)

                
                NavigationLink( destination: SignInView()){
                    ExtractedView(text: "Sign In")
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)

    }
    
}


struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}

struct ExtractedView: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("EmotionalColor"))
            .cornerRadius(50)
    }
}
