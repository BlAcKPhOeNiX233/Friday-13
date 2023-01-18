//
//  BookView.swift
//  ModalView
//
//  Created by Madina Malsagova on 17/01/23.
//

import SwiftUI

struct BookModalView: View {
    let image: String
    let name: String
    let author: String
    let description: String
    let bookinfo: String
    
    var body: some View {
        
        ScrollView {
             
            VStack {
                Image (image)
                
                VStack {
                    Text (name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    Text (author)
                        .font(.title2)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                }
                
                VStack {
                    Text (description)
                        .fontWeight(.bold)
                        .padding(.bottom)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.top)
                
                Text (bookinfo)
                    .font(.subheadline)
                    .padding(.bottom)
            }
            .frame(width: 300, height: 800, alignment: .center)
        }
    }
}

struct BookModalView_Previews: PreviewProvider {
    static var previews: some View {
        BookModalView(
            image: "Book",
            name: "Make Your First App with Xcode",
            author: "Roelf Sluman",
            description: "Description",
            bookinfo:
"""
This Starter's Guide teaches you how to use Xcode 10 to create an app. Not only will you get to know Xcode, you will be introduced to many aspects of app design.
                      
You will learn: Navigation within Xcode - Making a template-based app - Adding objects to your app - Views, superviews and subviews - Positioning your views on the screen - Using Auto Layout to make your apps looking consistent across different iOS devices - Including images in your app.
"""
        )
    }
}
