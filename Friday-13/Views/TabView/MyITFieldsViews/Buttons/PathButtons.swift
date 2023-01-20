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
    var varPathButton : Path
    
    
    var body: some View {
        
        VStack
        {
            
            
            ZStack{
                Text("")
                    .frame(width: screenWidth-59, height: 54)
                    .background(.black)
                    .cornerRadius(16)
                
                Text(varPathButton.buttonTitle)
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
        PathButtons(varPathButton: Path(buttonTitle: "Hard way", isSelected: false, descriptionModal:
                        """
                     Decide on the direction and take training in this direction on YouTube channels or free courses to understand whether you like this area or not. Make sure that you cope with this and delve into this matter within a month. Go to good one year courses with mentors and deadlines, and if there is an opportunity not to work for a while, then go to bootcamps for 4 months and be sure to have a mentor (all with employment).
                     
                     Make a portfolio of real 3-5 projects in parallel and look for a mentor, and also look for a job. Junior intern in the company (we work for about six months) and study with colleagues in parallel. Change jobs and companies (because longer you can't sit for a Junior year). Learn English and look for a job in a foreign market. Mentor and attend conferences in parallel. Becomes Senior, speak at conferences, mentor and then there are more ways:
1. Open your own business;
2. Become a manager;
3. Become an architect or go to a top-level company.
""", difficulty: "", task: [""]))
    }
}
