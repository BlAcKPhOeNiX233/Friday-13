//
//  booksViewModel.swift
//  Friday-13
//
//  Created by Bryan Sánchez Peralta on 16/01/23.
//

import Foundation

extension LibraryView {
    class BooksViewModel: ObservableObject {
        @Published var itFields: [ITField]
        init() {
            // Initialize all the IT fields
            itFields = [
                ITField(title: "iOS-Development"),
                ITField(title: "Android-Development"),
                ITField(title: "Web-Development")
            ]
            Task { await setBooks() }
        }
        // Initialize all the books by calling Google Books API
        func setBooks() async {
            do {
                // Initialize the books of the IT field
                try await itFields[0].books = getBooks(
                    url: "https://www.googleapis.com/books/v1/volumes?q=iOS-Development"
                )
                // Set all the favorites books
                for position in 0 ..< itFields[0].books!.items.count {
                    itFields[0].books?.items[position].setIsFavorite()
                }
                itFields[0].books?.convertProtocol()
                try await itFields[1].books = getBooks(
                    url: "https://www.googleapis.com/books/v1/volumes?q=Android-Development"
                )
                for position in 0 ..< itFields[1].books!.items.count {
                    itFields[1].books?.items[position].setIsFavorite()
                }
                itFields[1].books?.convertProtocol()
                try await itFields[2].books = getBooks(
                    url: "https://www.googleapis.com/books/v1/volumes?q=Web-Development"
                )
                for position in 0 ..< itFields[2].books!.items.count {
                    itFields[2].books?.items[position].setIsFavorite()
                }
                itFields[2].books?.convertProtocol()
            } catch {
                print("Error getting books: \(error.localizedDescription)")
            }
        }
        // Return all the decoded JSON of the API call
        func getBooks(url: String) async throws -> Library? {
            guard let url = URL(string: url) else {
                fatalError("Missing URL")
            }
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                let decodedData = try JSONDecoder().decode(Library.self, from: data)
                return decodedData
            } catch {
                print(error.localizedDescription)
                return nil
            }
        }
        // Return if there is at least one favorite book
        func getAreFavorite() -> Bool {
            for itField in itFields {
                for book in itField.books!.items where book.isFavorite == true {
                    return true
                }
            }
            return false
        }
        // Change the favorite state of the book
        func change(itFieldPosition: Int, bookTitle: String) {
            // Search the book
            for position in
                    0 ..< itFields[itFieldPosition].books!.items.count where
            itFields[itFieldPosition].books!.items[position].volumeInfo.title == bookTitle {
                // Change the state
                itFields[itFieldPosition].books!.items[position].isFavorite!.toggle()
                // Write the state in the user defaults
                UserDefaults.standard.set(
                    itFields[itFieldPosition].books!.items[position].isFavorite!,
                    forKey: "\(bookTitle)/isFavorite"
                )
            }
        }
    }
}
