//
//  DescriptionView.swift
//  ModalView
//
//  Created by Madina Malsagova on 11/01/23.
//

import SwiftUI

struct DescriptionView: View {
    @State private var selectedPath: Path?
    var title: String
    var description: String
    var salary: String
    var demand: String
    var paths: [Path]
    var position: Int
    var change: (Int) -> Void
     var body: some View {
        ZStack {
            Color("myBackground").ignoresSafeArea()
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
                    }.padding(.horizontal, 17)
                    VStack(alignment: .leading) {
                        Text("To become \(title)")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top)
                    }
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
                    Button {
                        change(position)
                    } label: {
                        Image(systemName: "plus.app")
                    }
                }
            }
        }
    }
}
