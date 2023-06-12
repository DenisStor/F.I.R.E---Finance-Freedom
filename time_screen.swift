//
//  time_screen.swift
//  F.I.R.E.
//
//  Created by Никита Малыхин on 12.06.2023.
//

import SwiftUI

struct time_screen: View {
    var body: some View {
        ZStack {
            Color("Color_font_1")
                .edgesIgnoringSafeArea(.all)
            VStack (alignment: .leading, spacing: 10) {
                HStack{
                    Image("logoFire")
                        .renderingMode(.template)
                        .foregroundColor(Color("Color_font_2"))
                    Spacer()
                } .padding(.horizontal, 15)
                
                Image("Start_Image")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(Color("Color_font_2"))
                //    .aspectRatio(contentMode: .fit)
                
                    
                
              
                
                HStack {
                    Text("Что такое FIRE?")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 76, weight: .medium)).foregroundColor(Color("Color_font_2"))
                 
                } .padding(.horizontal, 15)
                
                HStack {
                    Text ("FIRE это мощное приложение, разработанное для тех, кто стремится достичь финансовой независимости и свободы.")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 22, weight: .medium)).foregroundColor(Color("Color_font_2"))
                    Spacer()
                } .padding(.horizontal, 15)
                
                HStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(Color("Color_font_2"))
                        .frame(height: 71)
                        .padding(.horizontal, 15)
                }
                
                
            }
        }
    }
}

struct time_screen_Previews: PreviewProvider {
    static var previews: some View {
        time_screen()
    }
}
