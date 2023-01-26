//
//  BookMVModel.swift
//  Friday-13
//
//  Created by Gabriella Annunziata on 26/01/23.
//

import Foundation

extension BookModalView{
    final class BooksMVModel: ObservableObject{
        @Published var favBooks = [Library.Book]()
        @Published var savedBooks: Set<String>
        private var database = Database()
        init() {
            self.savedBooks = database.load()
//            self.favBooks =
        }
        func contains(_ item: String) -> Bool{
            savedBooks.contains(item)
        }
        
        func toggleFav(item: String){
            if contains(item){
                savedBooks.remove(item)
            } else{
                savedBooks.insert(item)
            }
            database.saveBook(items: savedBooks)
        }
        
        func toggleIsFavorite(id: String, item: Bool){
            if contains(id){
                item == true
            } else{
             item == false
            }
        }
        
    }
}
