//
//  LibraryView.swift
//  Friday-13
//
//  Created by benedetta on 16/01/23.
//

import SwiftUI

struct LibraryView: View {
    @StateObject var booksViewModel = BooksViewModel()
    @State private var showingSheet = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                ForEach(booksViewModel.itFields) { itField in
                    Text(itField.title)
                        .fontWeight(.semibold)
                        .font(.title2)
                        .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 16.0) {
                            Spacer(minLength: 16)
                            
                            ForEach(itField.books?.items ?? []) { book in
                                Button {
                                    showingSheet.toggle()
                                } label: {
                                    AsyncImage(url: URL(
                                        string: book.volumeInfo.imageLinks?.thumbnail ?? ""
                                    )) { image in
                                        image.resizable()
                                    } placeholder: {
                                        
                                    }

                                }.sheet(isPresented: $showingSheet) {
                                    BookModalView()
                                }
                                
                            }
                            
                            Spacer(minLength: 16)
                        }
                    }
                }
                
                Spacer()
            }
            Spacer()
        }
    }
    
    
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
