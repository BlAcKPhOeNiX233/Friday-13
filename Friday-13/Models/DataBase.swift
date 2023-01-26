//
//  DataBase.swift
//  Friday-13
//
//  Created by Gabriella Annunziata on 26/01/23.
//

import Foundation

final class Database {
    private let favKye = "fav_key"
    
    func saveBook(items: Set<String>){
        
        let array = Array(items)
        UserDefaults.standard.set(array, forKey: favKye)
        
    }
    
    func load() -> Set<String>{
        let array = UserDefaults.standard.array(forKey: favKye) as? [String] ?? [String]()
        return Set(array)
    }
    
    
}
