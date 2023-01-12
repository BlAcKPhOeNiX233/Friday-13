//
//  DescriptionView.swift
//  ModalView
//
//  Created by Madina Malsagova on 11/01/23.
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        
        ScrollView {
            VStack{
            Text("iOS-developer")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom)
            }
            
            VStack(alignment: .leading){
                
                Text ("Description")
                    .fontWeight(.bold)
                    .padding(.bottom)
                
                
                Text ("An iOS developer is a programmer who writes services and programs for iPhones. Due to the peculiarities of Apple devices and their operating system, you need to write special code for them.")
                    .font(.subheadline)
                    .padding(.bottom)
                    .lineLimit(.max)
                
                Text ("The main language in which iOS developers write code is Swift. Apple developed it specifically for its devices in 2014. To write in Swift, you need a special development environment — Xcode. It works correctly only on Apple devices: MacBook, iMac, Mac Pro, Mac Studio, Mac mini.replaces the PS4 Share button.")
                    .font(.subheadline)
                
                Text ("Salary")
                    .fontWeight(.bold)
                    .padding(.vertical)
                
                
                Text ("A mid-level developer with at least three years of experience earns 2,500 EUR and above. And the most experienced iOS developers can count on a salary of 3,000 EUR, 4,000 EUR, and sometimes even 5,500 EUR per month.")
                    .font(.subheadline)
                
                Text ("Demand")
                    .fontWeight(.bold)
                    .padding(.vertical)
                
                Text ("The market for iOS devices is vast, especially abroad. Developers for these devices will always be needed and will not be left without work.")
                    .font(.subheadline)
            }
            .padding(.leading, 17)
            .padding(.trailing, 17)
        }
        .padding(.top)
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}

