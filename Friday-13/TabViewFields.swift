//
//  TabViewFields.swift
//  Friday-13
//
//  Created by benedetta on 12/01/23.
//

import SwiftUI

struct TabViewFields: View {
    
    @State private var isShowingSheet = false
    
    var body: some View {
        TabView {
            
            Button{
                
                isShowingSheet.toggle()
                
            }label: {
                Rectangle()
                .frame(width: 342, height: 235)
                .foregroundColor(.cyan)
                .cornerRadius(10)
            }.sheet(isPresented: $isShowingSheet)
            {
                DescriptionView()
                    .presentationDetents([.medium,.large])
            }
            
            Button{
                
                isShowingSheet.toggle()
                
            }label: {
                Rectangle()
                .frame(width: 342, height: 235)
                .foregroundColor(.red)
                .cornerRadius(10)
            }.sheet(isPresented: $isShowingSheet)
            {
                Text("Something")
                    .presentationDetents([.medium,.large])
            }
            
            Button{
                
                isShowingSheet.toggle()
                
            }label: {
                Rectangle()
                .frame(width: 342, height: 235)
                .foregroundColor(.brown)
                .cornerRadius(10)
            }.sheet(isPresented: $isShowingSheet)
            {
                Text("Something")
                    .presentationDetents([.medium,.large])
            }
            
        }.tabViewStyle(.page(indexDisplayMode: .never))
            .frame(height:250)
    }
}

struct TabViewFields_Previews: PreviewProvider {
    static var previews: some View {
        TabViewFields()
    }
}
