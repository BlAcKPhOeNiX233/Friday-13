//
//  ButtonView.swift
//  ModalView
//
//  Created by Madina Malsagova on 16/01/23.
//

import SwiftUI

struct ChoosePathButton: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        VStack {
            ZStack{
                Text("")
                    .frame(width: screenWidth-129, height: 44)
                    .background(.black)
                    .cornerRadius(16)

                Text("Choose this path")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: screenWidth-64, height: 50)
                    .background(Color("myGrey"))
                    .cornerRadius(14)
            }
        }
    }
}

struct ChoosePathButton_Previews: PreviewProvider {
    static var previews: some View {
        ChoosePathButton()
    }
}

