//
//  ContentView.swift
//  Friday-13
//
//  Created by Bryan Sánchez Peralta on 11/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            MyITFields().tabItem{
                Label(
                    "MyITFields",
                    systemImage: "macbook.and.iphone"
                ).environment(\.symbolVariants, .none)//fare simboli vuoti nella tab bar
            }
            
            LibraryView().tabItem{
                Label(
                    "Library",
                    systemImage: "books.vertical"
                ).environment( \ .symbolVariants, .none)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
