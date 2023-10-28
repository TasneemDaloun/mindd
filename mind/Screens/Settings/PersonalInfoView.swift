//
//  PersonalInfoView.swift
//  mind
//
//  Created by tasneem daloun on 22/09/2023.
//

import SwiftUI

struct PersonalInfoView: View {
    var body: some View {
        Form {
            Text("Username")
            Text("Email")
            Text("Phone Number")
            Text("Password")

        }
        .navigationTitle("Personal Information")
    }
     
}
   
struct PersonalInfoView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationStack{
            PersonalInfoView()
        }
    }
}
