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
            save()
        }
    
    func remove(_ id: String) {
            objectWillChange.send()
            books.remove(id)
            save()
        }
    
    func save() {
           let encoder = JSONEncoder()
           if let encoded = try? encoder.encode(FavoriteBooks) {
               defaults.set(encoded, forKey: "FavoritesBooks")
           }
       }
}
