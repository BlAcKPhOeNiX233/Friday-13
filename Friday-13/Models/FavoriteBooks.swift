//
//  FavouriteBooks.swift
//  Friday-13
//
//  Created by Gabriella Annunziata on 25/01/23.
//

import Foundation

class FavoriteBooks: ObservableObject{
    private var books: Set<String>
    let defaults = UserDefaults.standard
    
    init() {
            let decoder = JSONDecoder()
            if let data = defaults.value(forKey: "FavoritesBooks") as? Data {
                let booksData = try? decoder.decode(Set<String>.self, from: data)
                self.books = booksData ?? []
            } else {
                self.books = []
            }
        }
    func getBooksIds() -> Set<String> {
           return self.books
       }
    
    func contains(_ id: String) -> Bool {
           books.contains(id)
       }
    
    func add(_ id: String) {
            objectWillChange.send()
            books.insert(id)
                    }
    
    func remove(_ id: String) {
            objectWillChange.send()
            books.remove(id)
        }
}
