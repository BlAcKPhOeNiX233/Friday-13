//
//  MyITFiels.swift
//  Friday-13
//
//  Created by Gabriella Annunziata on 11/01/23.
//

import SwiftUI

struct MyITFields: View {
    var itFieldViewModel = ITFieldViewModel()
    
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
                    
                    TabView {
                        ForEach(itFieldViewModel.itFields) { field in
                            NavigationLink(destination: DescriptionView(
                                title: field.title,
                                description: field.description!,
                                salary: field.salary!,
                                demand: field.demand!,
                                paths: field.paths!
                            )) {
                                ZStack{
                                    Image(field.image!)
                                        .resizable()
                                        .frame(width: 342, height: 235)
                                        .foregroundColor(.cyan)
                                        .cornerRadius(10)
                                   
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 342, height: 50)
                                            .foregroundColor(Color.black.opacity(0.5))
                                        Text(field.title)
                                            .foregroundColor(Color.white)
                                    }.padding(.top, 190)
                                    
                                }
                                .cornerRadius(10)
                            }
                        }
                    }.tabViewStyle(.page(indexDisplayMode: .never)).frame(height: 250)
                    
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
