//
//  MyITFiels.swift
//  Friday-13
//
//  Created by Gabriella Annunziata on 11/01/23.
//

import SwiftUI

struct MyITFiels: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Choose the field your interested in !")
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                    .font(.headline)
                    .frame(width: 350,height: 240)
               
                
                Text("Other IT Fields")
                    .fontWeight(.semibold)
                    .font(.title2)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.leading, 15)
                
                TabView {
                    
                        Rectangle()
                            .frame(width: 342, height: 235)
                            .foregroundColor(.cyan)
                            .cornerRadius(10)
                        
                        Rectangle()
                            .frame(width: 342, height: 235)
                            .foregroundColor(.red)
                            .cornerRadius(10)
                        
                        Rectangle()
                            .frame(width: 342, height: 235)
                            .foregroundColor(.green)
                            .cornerRadius(10)
                    
                    
                }.tabViewStyle(.page(indexDisplayMode: .never))
                    .frame(height:250)
                
            }.navigationTitle("My IT Fields")
            
            
            
        }
    }
}
struct MyITFiels_Previews: PreviewProvider {
    static var previews: some View {
        MyITFiels()
    }
}
