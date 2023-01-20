//
//  DescriptionView.swift
//  ModalView
//
//  Created by Madina Malsagova on 11/01/23.
//

import SwiftUI

struct DescriptionView: View {
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    @State private var isSelected = false
    @State private var selectedPath: Path?
  //  var varPathButton : Path
    
    var title: String
    var description: String
    var salary: String
    var demand: String
    var paths: [Path]
    
    @ObservedObject var varPathButtonVM = ITFieldViewModel()
    //@State private var selectedPath: Path?
    
    var body: some View {
        ZStack{
            Color("myBackground").ignoresSafeArea()
            ScrollView {
                
                VStack{
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
                        Text("To become \(title)")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top)
                        
                    }
                    
                    
                    ForEach(paths){ path in
                        Button{
                            isSelected.toggle()
                            selectedPath = path
                        } label: {
                            VStack
                            {
                                
                                
                                ZStack{
                                    Text("")
                                        .frame(width: screenWidth-59, height: 54)
                                        .background(.black)
                                        .cornerRadius(16)
                                    
                                    Text(path.buttonTitle)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .frame(width: screenWidth-64, height: 50)
                                        .background(Color("myGrey"))
                                        .cornerRadius(14)
                                    
                                    
                                }
                            }

                        }.sheet(item: $selectedPath)
                        {
                            selectedPath in
                            ModalPathView(path: selectedPath)
                        }
                }
                     
                     
                    
                }
                .padding(.bottom)

                
            }
            
            .navigationTitle(title)
            
        }
        }
    }
        
        

