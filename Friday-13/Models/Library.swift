//
//  book.swift
//  Friday-13
//
//  Created by Bryan Sánchez Peralta on 16/01/23.
//

import Foundation

struct Library: Decodable {
    var items: [Book]
    
    struct Book: Identifiable, Decodable {
        let id = UUID()
        var volumeInfo: VolumeInfo
        
        struct VolumeInfo: Decodable {
            let title: String?
            let authors: [String?]
            let publisher: String?
            let description: String?
            var imageLinks: ImageLinks?
            
            struct ImageLinks: Decodable{
                var thumbnail: String?
            }
        }
    }
    
    mutating func convertProtocol() {
        for index in 0 ..< items.count {
            items[index].volumeInfo.imageLinks!.thumbnail = items[index].volumeInfo.imageLinks!.thumbnail!.replacingOccurrences(of: "http", with: "https")
        }
    }
}
