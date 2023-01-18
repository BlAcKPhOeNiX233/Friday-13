//
//  LibraryView.swift
//  Friday-13
//
//  Created by benedetta on 16/01/23.
//

import SwiftUI

struct LibraryView: View {
    @StateObject var booksViewModel = BooksViewModel()
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                ForEach(booksViewModel.itFields) { itField in
                    Text(itField.title)
                        .fontWeight(.semibold)
                        .font(.title2)
                    
                }
                
                Spacer()
            }
            Spacer()
        }.padding()
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
