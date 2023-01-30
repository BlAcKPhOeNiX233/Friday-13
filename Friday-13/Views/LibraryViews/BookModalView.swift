//
//  BookView.swift
//  ModalView
//
//  Created by Madina Malsagova on 17/01/23.
//

import SwiftUI

struct BookModalView: View {
    var book: Library.Book
    var itFieldPosition: Int
    var change: (Int, String) -> Void
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    AsyncImage(url: URL(string: book.volumeInfo.imageLinks!.thumbnail!)) { image in
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
                        Text(book.volumeInfo.title!)
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        Text(book.volumeInfo.authors!.joined(separator: ", "))
                            .font(.title2)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                    }
                    VStack {
                        Text(book.volumeInfo.description!)
                            .padding(.bottom)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }.padding(.top)
                }.padding(.horizontal, 50)
            }
            .padding(.top)
            .toolbar {
                ToolbarItem {
                    Button {
                        change(itFieldPosition, book.volumeInfo.title!)
                    } label: {
                        Image(systemName: book.isFavorite! ? "heart.fill" : "heart")
                            .foregroundColor(book.isFavorite! ? .red : .primary)
                    }
                }
            }
        }
    }
}

struct BookModalView_Previews: PreviewProvider {
    static var previews: some View {
        BookModalView(
            book: Library.Book(
                volumeInfo: VolumeInfo(
                    title: "Make Your First App with Xcode",
                    authors: ["Roelf Sluman"],
                    description: "Description",
                    imageLinks: VolumeInfo.ImageLinks(
                        thumbnail:
                            "http://books.google.com/books/content?id=q9MsAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                    )
                ),
                isFavorite: false
            ),
            itFieldPosition: 0,
            change: {_, _  in }
        )
    }
}
