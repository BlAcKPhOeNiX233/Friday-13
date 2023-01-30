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
        var isFavorite: Bool?
        // Search from the userDefaults if the book is one of the favorite ones (the default value is "false")
        mutating func setIsFavorite() {
            isFavorite = UserDefaults.standard.bool(forKey: "\(volumeInfo.title!)/isFavorite")
        }
    }
    mutating func convertProtocol() {
        for index in 0 ..< items.count {
            items[index].volumeInfo.imageLinks!.thumbnail =
            items[index].volumeInfo.imageLinks!.thumbnail!
                .replacingOccurrences(of: "http", with: "https")
        }
    }
}

struct VolumeInfo: Decodable {
    let title: String?
    let authors: [String]?
    let description: String?
    var imageLinks: ImageLinks?
    struct ImageLinks: Decodable {
        var thumbnail: String?
    }
}
