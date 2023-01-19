//
//  Path.swift
//  Friday-13
//
//  Created by Bryan Sánchez Peralta on 12/01/23.
//

import Foundation

struct Path: Identifiable {
    
    var id: UUID = UUID()
    var buttonTitle: String
    var isSelected: Bool
    var descriptionModal: String
    var difficulty: String;
    var task: [String];
}
