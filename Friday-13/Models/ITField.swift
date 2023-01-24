//
//  ITFields.swift
//  Friday-13
//
//  Created by Bryan Sánchez Peralta on 12/01/23.
//

import Foundation

struct ITField: Identifiable {
    var id: UUID
    let title: String
    var image: String?, description: String?, salary: String?, demand: String?
    var paths: [Path]?
    var percentage: Int?
    var books: Library?
    var isSelected: Bool
    init(
        id: UUID = UUID(),
        title: String,
        image: String? = nil,
        description: String? = nil,
        salary: String? = nil,
        demand: String? = nil,
        paths: [Path]? = nil,
        percentage: Int? = nil,
        books: Library? = nil,
        isSelected: Bool = false
    ) {
        self.id = id
        self.title = title
        self.image = image
        self.description = description
        self.salary = salary
        self.demand = demand
        self.paths = paths
        self.percentage = percentage
        self.books = books
        self.isSelected = UserDefaults.standard.bool(forKey: "\(title)/isSelected")
    }
}
