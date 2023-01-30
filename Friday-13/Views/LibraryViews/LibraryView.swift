//
//  LibraryView.swift
//  Friday-13
//
//  Created by benedetta on 16/01/23.
//

import SwiftUI

struct LibraryView: View {
    @ObservedObject var booksViewModel = BooksViewModel()
    @State private var showingSheet = false
    @State var book: Library.Book?
    var body: some View {
        NavigationStack {
            ZStack {
                Color("myBackground").ignoresSafeArea()
                ScrollView {
                    VStack(alignment: .leading) {
                        ForEach(0 ..< booksViewModel.itFields.count) { position in
                            Text(booksViewModel.itFields[position].title)
                                .fontWeight(.semibold)
                                .font(.title2)
                                .padding()
                            getBooks(
                                books: booksViewModel.itFields[position].books?.items, itFieldPosition: position
                            )
                            Spacer()
                        }
                    }
                }.navigationTitle("Library")
            }
        }
    }
    func getBooks(books: [Library.Book]?, itFieldPosition: Int) -> some View {
        return ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(
                    books ?? []
                ) { book in
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
                    }.sheet(item: $book) { _ in
                        BookModalView(
                            book: book,
                            itFieldPosition: itFieldPosition,
                            change: change
                        )
                    }
                }
            }.padding(.horizontal)
        }
    }
    func change(itFieldPosition: Int, bookTitle: String) {
        for position in
                0 ..< booksViewModel.itFields[itFieldPosition].books!.items.count where
        booksViewModel.itFields[itFieldPosition].books!.items[position].volumeInfo.title == bookTitle {
            booksViewModel.itFields[itFieldPosition].books!.items[position].isFavorite!.toggle()
            UserDefaults.standard.set(
                booksViewModel.itFields[itFieldPosition].books!.items[position].isFavorite!,
                forKey: "\(bookTitle)/isSelected"
            )
        }
    }
}
struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
