//
//  MyITFiels.swift
//  Friday-13
//
//  Created by Gabriella Annunziata on 11/01/23.
//

import SwiftUI

struct MyITFieldsView: View {
    @ObservedObject var itFieldViewModel = ITFieldViewModel()
    var body: some View {
        NavigationStack {
            ZStack {
                Color("myBackground").ignoresSafeArea()
                VStack {
                    // Get all the selected IT fields
                    if itFieldViewModel.getAreSelected() {
                        getFields(areSelected: true)
                    } else {
                        Text("Choose the field your interested in!")
                            .opacity(0.15)
                            .font(.headline)
                            .frame(width: 350, height: 240)
                    }
                    Text("Other IT Fields")
                        .fontWeight(.semibold)
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 15)
                    // Get all the not selected IT fields
                    getFields(areSelected: false)
                    Spacer()
                }.navigationTitle("My IT Fields")
            }
        }
    }
    // Return all the IT field that are selected or not
    func getFields(areSelected: Bool) -> some View {
        return TabView {
            ForEach(0 ..< itFieldViewModel.itFields.count, id: \.self) { position in
                if itFieldViewModel.itFields[position].isSelected == areSelected {
                    NavigationLink(
                        destination: DescriptionView(
                            title: itFieldViewModel.itFields[position].title,
                            description: itFieldViewModel.itFields[position].description!,
                            salary: itFieldViewModel.itFields[position].salary!,
                            demand: itFieldViewModel.itFields[position].demand!,
                            paths: itFieldViewModel.itFields[position].paths!,
                            position: position,
                            isSelected: itFieldViewModel.itFields[position].isSelected,
                            change: itFieldViewModel.change
                        )
                    ) {
                        ZStack {
                            Image(itFieldViewModel.itFields[position].image!)
                                .resizable()
                                .frame(width: 342, height: 235)
                                .foregroundColor(.cyan)
                                .cornerRadius(10)
                            ZStack {
                                Rectangle()
                                    .frame(width: 342, height: 50)
                                    .foregroundColor(Color.black.opacity(0.5))
                                Text(itFieldViewModel.itFields[position].title)
                                    .foregroundColor(Color.white)
                            }.padding(.top, 190)
                        }.cornerRadius(10)
                    }
                }
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(height: 250)
        .background(Color(.systemGray6))
    }
}

struct MyITFields_Previews: PreviewProvider {
    static var previews: some View {
        MyITFieldsView()
    }
}
