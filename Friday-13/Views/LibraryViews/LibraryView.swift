//
//  LibraryView.swift
//  Friday-13
//
//  Created by benedetta on 16/01/23.
//

import SwiftUI

struct LibraryView: View {
    @StateObject var booksViewModel = BooksViewModel()
    @State var favBooks = [Library.Book]()
    @State private var showingSheet = false
    @State var book: Library.Book?
    var body: some View {
        NavigationStack {
            ZStack {
                Color("myBackground").ignoresSafeArea()
                ScrollView {
                    VStack(alignment: .leading) {
                        ForEach(booksViewModel.itFields) { itField in
                            Text(itField.title)
                                .fontWeight(.semibold)
                                .font(.title2)
                                .padding()
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 16) {
                                    ForEach(itField.books?.items ?? []) { book in
                                        Button {
                                            self.book = book
                                        } label: {
                                            AsyncImage(url: URL(
                                                string: book.volumeInfo.imageLinks?.thumbnail ?? ""
                                            )) { image in
                                                image
                                                    .resizable()
                                                    .cornerRadius(7)
                                                    .shadow(radius: 4)
                                            } placeholder: {
                                                ProgressView()
                                            }
                                        }.sheet(item: $book) { book in
                                            BookModalView(
                                                id: book.id,
                                                isFavorite: book.isFavorite ?? false,
                                                image: book.volumeInfo.imageLinks?.thumbnail ?? "",
                                                name: book.volumeInfo.title ?? "",
                                                author: book.volumeInfo.authors ?? [""],
                                                description: book.volumeInfo.description ?? "")
                                        }

                                    }
                                }.padding(.horizontal)
                            }
                        }
                        Spacer()
                    }
                }
            }.navigationTitle("Library")
        }
    }
    
    func addToFavorite(item: Library.Book){
        if item.isFavorite == true {
            favBooks.insert(item, at: 0)
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
