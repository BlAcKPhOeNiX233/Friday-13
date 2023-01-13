//
//  DescriptionView.swift
//  ModalView
//
//  Created by Madina Malsagova on 11/01/23.
//

import SwiftUI

struct DescriptionView: View {
    var title: String
    var description: String
    var salary: String
    var demand: String
    
    var body: some View {
        
        ScrollView {
            VStack{
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom)
            }
            
            VStack(alignment: .leading){
                
                Text ("Description")
                    .fontWeight(.bold)
                    .padding(.bottom)
                
                
                Text (description)
                    .font(.subheadline)
                    .padding(.bottom)
                    .lineLimit(.max)
               
                
                Text ("Salary")
                    .fontWeight(.bold)
                    .padding(.vertical)
                
                
                Text (salary)
                    .font(.subheadline)
                
                Text ("Demand")
                    .fontWeight(.bold)
                    .padding(.vertical)
                
                Text (demand)
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
        DescriptionView(title: "", description: "", salary: "", demand: "")
    }
}

