//
//  booksViewModel.swift
//  Friday-13
//
//  Created by Bryan Sánchez Peralta on 16/01/23.
//

import Foundation

extension LibraryView {
    @MainActor class BooksViewModel: ObservableObject {
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
                for fieldPosition in 0 ..< itFields.count {
                    // Initialize the books of the IT field
                    try await itFields[fieldPosition].books = getBooks(
                        url: "https://www.googleapis.com/books/v1/volumes?q=\(itFields[fieldPosition].title)"
                    )
                    // Set all the favorites books
                    for bookPosition in 0 ..< itFields[fieldPosition].books!.items.count {
                        itFields[fieldPosition].books?.items[bookPosition].setIsFavorite()
                    }
                    // Convert all the https protocols in https
                    itFields[fieldPosition].books?.convertProtocol()
                }
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
