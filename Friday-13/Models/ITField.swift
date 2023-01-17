//
//  ITFields.swift
//  Friday-13
//
//  Created by Bryan Sánchez Peralta on 12/01/23.
//

import Foundation

struct ITField: Identifiable{
    var id: UUID = UUID()
    let title: String
    var image: String?, description: String?, salary: String?, demand: String?
    var paths: [Path]?
    var percentage: Int?
    var books: Books?
}
