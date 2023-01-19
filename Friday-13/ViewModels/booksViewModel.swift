//
//  booksViewModel.swift
//  Friday-13
//
//  Created by Bryan Sánchez Peralta on 16/01/23.
//

import SwiftUI

extension LibraryView {
    @MainActor class BooksViewModel: ObservableObject {
        @Published var itFields = [
            ITField(title: "iOS-Development"),
            ITField(title: "Android-Development"),
            ITField(title: "Web-Development")
        ]
        
        init() {
            Task { await setBooks() }
        }
        
        func setBooks() async {
            do {
                try await itFields[0].books = getBooks(url: "https://www.googleapis.com/books/v1/volumes?q=iOS-Development")
                try await itFields[1].books = getBooks(url: "https://www.googleapis.com/books/v1/volumes?q=Android-Development")
                try await itFields[2].books = getBooks(url: "https://www.googleapis.com/books/v1/volumes?q=Web-Development")
            } catch {
                print("Error getting books: \(error.localizedDescription)")
            }
        }
        
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
    }
}
