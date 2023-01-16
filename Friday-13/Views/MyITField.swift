//
//  MyITFiels.swift
//  Friday-13
//
//  Created by Gabriella Annunziata on 11/01/23.
//

import SwiftUI

struct MyITFields: View {
    var body: some View {
        NavigationStack{
            
            ZStack{
                Color("myBackground").ignoresSafeArea()
                VStack{
                    Text("Choose the field your interested in!")
                        .opacity(0.15)
                        .font(.headline)
                        .frame(width: 350,height: 240)
                    
                    
                    
                    Text("Other IT Fields")
                        .fontWeight(.semibold)
                        .font(.title2)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.leading, 15)
                    
                    ITFieldsView()
                    
                    Spacer()
                    
                }.navigationTitle("My IT Fields")
                
            }
            
        }
    }
}
struct MyITFields_Previews: PreviewProvider {
    static var previews: some View {
        MyITFields()
    }
}
