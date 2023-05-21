//
//  AboutFIRE_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 20.05.2023.
//

import SwiftUI

struct AboutFIRE_Screen: View {
    var body: some View {
        ZStack {
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView (showsIndicators: false){
                VStack(alignment: .leading) {
                    
                    Text("Fire_3")
                        .font(.system(size: 65.5, weight: .semibold)).foregroundColor(Color("Color_font_1"))
                        .padding(.bottom, 10)
                    
                    Text("Fire_1")
                        .font(.system(size: 23.4, weight: .medium))
                        .padding(.bottom, 20)
                        .lineSpacing(5)
                        .foregroundColor(Color("Color_font"))
                    
                    Text("Fire_2")
                        .font(.system(size: 23.4, weight: .medium))
                        .lineSpacing(5)
                        .foregroundColor(Color("Color_font"))
                        .padding(.bottom,30)
                  
                    Image("logo_Fire")

                    
                } .padding(15)
            }
        }
    }
}

struct AboutFIRE_Screen_Previews: PreviewProvider {
    static var previews: some View {
        AboutFIRE_Screen()
    }
}
