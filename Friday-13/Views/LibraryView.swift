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
    @State var book: Library.Book?
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color("myBackground").ignoresSafeArea()
                ScrollView{
                VStack(alignment: .leading) {
                    ForEach(booksViewModel.itFields) { itField in
                        Text(itField.title)
                            .fontWeight(.semibold)
                            .font(.title2)
                            .padding()
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 16) {
                                ForEach(itField.books?.items ?? []) { book in
                                    Button {
                                        self.book = book
                                    } label: {
                                        AsyncImage(url: URL(
                                            string: book.volumeInfo.imageLinks?.thumbnail ?? ""
                                        )) { image in
                                            image.resizable()
                                            
                                                .cornerRadius(7)
                                                .shadow(radius: 4)
                                        } placeholder: {
                                            ProgressView()

                                        }
                                        
                                    }.sheet(item: $book) { book in
                                        BookModalView(image: book.volumeInfo.imageLinks?.thumbnail ?? "", name: book.volumeInfo.title ?? "", author: book.volumeInfo.authors ?? [""], description: book.volumeInfo.description ?? "")
                                    }
                                    
                                }
                                
                            }.padding(.horizontal)
                        }
                    }
                    
                    Spacer()
                }
            }
        }.navigationTitle("Library")
        }
    }
    
    
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
