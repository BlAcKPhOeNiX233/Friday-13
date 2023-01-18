//
//  book.swift
//  Friday-13
//
//  Created by Bryan Sánchez Peralta on 16/01/23.
//

import Foundation

struct Library: Decodable {
    let items: [Book]
    
    struct Book: Decodable {
        let volumeInfo: [VolumeInfo]
        let publisher: String
        let description: String
        
        struct VolumeInfo: Decodable {
            let title: String
            let authors: [String]
        }
        
        struct ImageLinks: Decodable{
            let smallThumbnail: String
            let thumbnail: String
        }
    }
}
