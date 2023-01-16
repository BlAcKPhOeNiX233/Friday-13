//
//  PathButtons.swift
//  Friday-13
//
//  Created by benedetta on 16/01/23.
//

import SwiftUI

struct PathButtons: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    var body: some View {
        
        VStack
        {
            ZStack{
                
                Text("")
                    .frame(width: screenWidth-59, height: 54)
                    .background(.black)
                    .cornerRadius(16)
                
                Text("Easy way")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: screenWidth-64, height: 50)
                    .background(Color("myGrey"))
                    .cornerRadius(14)
            }
            
            ZStack{
                
                Text("")
                     .frame(width: screenWidth-59, height: 54)
                    .background(.black)
                    .cornerRadius(16)
                
                Text("Medium way")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: screenWidth-64, height: 50)
                    .background(Color("myGrey"))
                    .cornerRadius(14)
            }

            ZStack{
                
                Text("")
                    .frame(width: screenWidth-59, height: 54)
                   .background(.black)
                   .cornerRadius(16)
                
                Text("Hard way")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: screenWidth-64, height: 50)
                    .background(Color("myGrey"))
                    .cornerRadius(14)
            }

            
        }
    }
}

struct PathButtons_Previews: PreviewProvider {
    static var previews: some View {
        PathButtons()
    }
}
