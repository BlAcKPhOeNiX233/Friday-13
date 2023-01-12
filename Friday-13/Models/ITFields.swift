//
//  ITFields.swift
//  Friday-13
//
//  Created by Bryan Sánchez Peralta on 12/01/23.
//

import Foundation

struct ITField {
    let title: String, description: String, image: String;
    var percentage: Int?;
    
    func getTitle() -> String {
        return title;
    }
    
    func getDescription() -> String {
        return description;
    }
    
    func getImage() -> String {
        return image;
    }
    
    func getPercentage() -> Int? {
        return percentage;
    }
}
