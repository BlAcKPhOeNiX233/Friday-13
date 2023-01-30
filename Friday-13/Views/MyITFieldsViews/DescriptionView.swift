//
//  DescriptionView.swift
//  ModalView
//
//  Created by Madina Malsagova on 11/01/23.
//

import SwiftUI

struct DescriptionView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectedPath: Path?
    var title: String
    var description: String
    var salary: String
    var demand: String
    var paths: [Path]
    var position: Int
    var isSelected: Bool
    var change: (Int) -> Void
     var body: some View {
        ZStack {
            Color("myBackground").ignoresSafeArea()
            // Description of the IT field
            ScrollView {
                VStack {
                    VStack(alignment: .leading) {
                        Text("Description")
                            .fontWeight(.bold)
                        Text(description)
                            .font(.subheadline)
                            .padding(.top, 1)
                            .padding(.bottom)
                            .lineLimit(.max)
                        Text("Salary")
                            .fontWeight(.bold)
                        Text(salary)
                            .font(.subheadline)
                            .padding(.top, 1)
                            .padding(.bottom)
                        Text("Demand")
                            .fontWeight(.bold)
                        Text(demand)
                            .font(.subheadline)
                            .padding(.top, 1)
                            .padding(.bottom)
                    }
                    .padding(.horizontal, 17)
                    VStack(alignment: .leading) {
                        Text("To become \(title)")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top)
                    }
                    // All the paths of the IT field
                    ForEach(paths) { path in
                        Button {
                            selectedPath = path
                        } label: {
                            Text(path.buttonTitle)
                                .fontWeight(.semibold)
                                .font(.system(size: 17))
                                .frame(width: 300, height: 30)
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(Color(.systemGray))
                        .sheet(item: $selectedPath) { selectedPath in
                            ModalPathView(path: selectedPath)
                        }
                    }
                }.padding(.bottom)
            }
            .navigationTitle(title)
            .toolbar {
                ToolbarItem {
                    // When clicked, change the selection state of the IT field
                    Button {
                        change(position)
                        // Close the view
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: isSelected ? "minus.square" : "plus.app")
                    }
                }
            }
        }
    }
}
