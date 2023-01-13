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
            VStack(alignment: .leading){
                        Text("To become iOS-developer")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top)
                        }

                        VStack(alignment: .leading){
                            HStack{
                                Image ("ToggleButton")
                                Text("Easy way")
                                .fontWeight(.bold)}
                            Text ("Description of way")
                                .font(.subheadline)
                        }
                        .padding(.leading, -170.0)

                        VStack(alignment: .leading){
                            HStack{
                                Image ("ToggleButton")
                                Text("Medium way")
                                .fontWeight(.bold)}
                            Text ("Description of way")
                                .font(.subheadline)

                        }
                        .padding(.leading, -170.0)


                        VStack(alignment: .leading){
                            HStack{
                                Image ("ToggleButton")
                                Text("Hard way")
                                .fontWeight(.bold)}
                            Text ("Description of way")
                                .font(.subheadline)
                        }
                        .padding(.leading, -170.0)

                    }
            .padding(.top)
            
        }
    }
        
        

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(title: "", description: "", salary: "", demand: "")
    }
}

