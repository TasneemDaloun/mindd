//
//  PhysicalGrid.swift
//  mind
//
//  Created by tasneem daloun on 20/10/23.
//

import Foundation
import SwiftUI
struct DataModel: Identifiable {
    let id: String
    let name: String
    let imageName: String
}
struct PhysicalGrid: View {
    let data: [DataModel] = [
        .init(id: "0", name: "108.that girl guide to gym ", imageName: "1"),
        .init(id: "1", name: "What Is Matodextrin | Book", imageName: "2"),
        .init(id: "2", name: "How Should We Be Growing Food", imageName: "3"),
        .init(id: "3", name: "A Midsummer Night's Dream", imageName: "4")
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(data) { items in
                    CollectionView(data: items)
                        .font(.headline)
                }
            }.navigationBarTitle("Here are some episodes you may like")
            
        }
    }
}
struct CollectionView: View {
    let data: DataModel
    var body: some View {
        VStack {
            HStack {
                ForEach(0..<2) { items in
                    Spacer()
                    Image(self.data.imageName)
                        .resizable()
                        .frame(width: 150, height: 150)
                        .shadow(radius: 2)
                    Spacer()
                }.padding(.bottom, 16)
            }
            HStack {
                Spacer()
                Text(self.data.name)
                
                Spacer()
                
            }
        }
    }
}

struct PhysicalGrid_Previews: PreviewProvider {
    static var previews: some View {
        PhysicalGrid().environment(\.colorScheme, .light)
    }
}
