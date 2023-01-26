//
//  FileManager.swift
//  Friday-13
//
//  Created by Gabriella Annunziata on 26/01/23.
//

import Foundation

func createFile() {
    let manager = FileManager.default
    let documentsDirectory = manager.urls(for: .documentDirectory, in: .userDomainMask).first!
    print(documentsDirectory.path)
    
    let newFolderUrl = documentsDirectory.appendingPathComponent("Favorite Books")

    do {
        let fileUrl = newFolderUrl.appendingPathComponent("Book.txt")
        manager.createFile(atPath: fileUrl.path, contents: nil)
    }
    catch{
        print (error)
    }
    
    
}
