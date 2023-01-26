//
//  BookView.swift
//  ModalView
//
//  Created by Madina Malsagova on 17/01/23.
//

import SwiftUI

struct BookModalView: View {
    @ObservedObject var favoriteBooks = FavoriteBooks()
    let id: String
    let image: String
    let name: String
    let author: [String]
    let description: String
    
    var body: some View {
        
        NavigationStack{
            ScrollView(showsIndicators: false) {
                VStack {
                    AsyncImage(url: URL(string: image)) { image in
                        image
                            .resizable()
                            .frame(width: 200)
                            .scaledToFit()
                            .cornerRadius(7)
                            .shadow(radius: 4)
                    } placeholder: {
                        ProgressView()
                    }
                    
                    VStack {
                        Text(name)
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        
                        Text(author.joined(separator: ", "))
                            .font(.title2)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack {
                        Text (description)
                            .padding(.bottom)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }.padding(.top)
                }.padding(.horizontal,50).toolbar {
                    ToolbarItem {
                        Button {
                            if self.favoriteBooks.contains() {
                                     self.favorites.remove(id)
                                 } else {
                                     self.favorites.add(id)
                                 }
                        } label: {
                            Image(systemName: isFavorite ? "heart.fill" : "heart").foregroundColor(isFavorite ? .red)
                        }
                    }
                }
            }.padding(.top)
        }
    }
//    func addFavorite() {
//        .isSelected.toggle()
//        UserDefaults.standard.set(
//            itFieldViewModel.itFields[position].isSelected,
//            forKey: "\(itFieldViewModel.itFields[position].title)/isSelected"
//        )
//    }
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
