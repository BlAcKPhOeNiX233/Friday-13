//
//  PathView.swift
//  ModalView
//
//  Created by Madina Malsagova on 16/01/23.
//

import SwiftUI

struct HardWayView: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Hard way")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom)
                

                Text ("Decide on the direction and take training in this direction on YouTube channels or free courses to understand whether you like this area or not. Make sure that you cope with this and delve into this matter within a month.")
                    .font(.subheadline)
                    .padding(.bottom)
                
                Text ("Go to good one year courses with mentors and deadlines, and if there is an opportunity not to work for a while, then go to bootcamps for 4 months and be sure to have a mentor (all with employment).")
                    .font(.subheadline)
                    .padding(.bottom)
                
                Text ("Make a portfolio of real 3-5 projects in parallel and look for a mentor, and also look for a job. Junior intern in the company (we work for about six months) and study with colleagues in parallel. Change jobs and companies (because longer you can't sit for a Junior year).")
                    .font(.subheadline)
                    .padding(.bottom)
                
                Text ("Learn English and look for a job in a foreign market. Mentor and attend conferences in parallel. Becomes Senior, speak at conferences, mentor and then there are more ways:")
                    .font(.subheadline)
                    .padding(.bottom)
                
                    Text ("1. Open your own business")
                    .font(.subheadline)
                    .padding(.leading, -116.0)
                    
                    Text ("2. Become a manager")
                    .font(.subheadline)
                    .padding(.leading, -150.0)
                    
                    Text ("3. Become an architect or go to a top-level company.")
                    .font(.subheadline)
                    .padding(.leading, -39.0)
                
                ChoosePathButton ()
                    .padding(.top)
                    
            }
            
            .frame(width: 330, height: 800, alignment: .center)
        }
    }
    
    struct PathView_Previews: PreviewProvider {
        static var previews: some View {
            HardWayView()
        }
    }
}
