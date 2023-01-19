//
//  BookView.swift
//  ModalView
//
//  Created by Madina Malsagova on 17/01/23.
//

import SwiftUI

struct BookModalView: View {
    let image: String
    let name: String
    let author: [String]
    let description: String
    
    var body: some View {
        
        ScrollView {
             
            VStack {
                AsyncImage(url: URL(string: image)) { image in
                    image.resizable()
                } placeholder: {
                    
                }
                
                VStack {
                    Text (name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    Text (author.joined(separator: ", "))
                        .font(.title2)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                }
                
                VStack {
                    Text (description)
                        .fontWeight(.bold)
                        .padding(.bottom)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.top)
            }
            .frame(width: 300, height: 800, alignment: .center)
        }
    }
}

struct BookModalView_Previews: PreviewProvider {
    static var previews: some View {
        BookModalView(
            image: "Book",
            name: "Make Your First App with Xcode",
            author: ["Roelf Sluman"],
            description: "Description"
        )
    }
}
