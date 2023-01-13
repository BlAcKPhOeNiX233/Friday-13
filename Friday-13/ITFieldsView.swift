//
//  TabViewFields.swift
//  Friday-13
//
//  Created by benedetta on 12/01/23.
//

import SwiftUI

struct ITFieldsView: View {
    
    var itFieldViewModel = ITFieldViewModel()
    @State var field: ITField?
    
    var body: some View {
        TabView {
            ForEach(itFieldViewModel.itFields) { field in
                Button{
                    self.field = field
                }label: {
                    Image(field.image)
                        .resizable()
                        .frame(width: 342, height: 235)
                        .foregroundColor(.cyan)
                        .cornerRadius(10)
                }
                .sheet(item: $field) {
                    field in
                    DescriptionView(
                        title: field.title,
                        description: field.description,
                        salary: field.salary,
                        demand: field.demand
                    ).presentationDetents([.medium,.large])
                }
            }
        }.tabViewStyle(.page(indexDisplayMode: .never)).frame(height: 250)
        
    }
}

struct TabViewFields_Previews: PreviewProvider {
    static var previews: some View {
        ITFieldsView()
    }
}
