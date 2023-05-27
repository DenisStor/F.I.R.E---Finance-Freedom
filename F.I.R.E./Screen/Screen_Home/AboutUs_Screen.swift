//
//  AboutUs_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 23.05.2023.
//

import SwiftUI

struct AboutUs_Screen: View {
    var body: some View {
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            
                
                HStack {
                    VStack(alignment: .leading){
                        
                        VStack(alignment: .leading){
                            Spacer()
                            Image("banana_Image")
                            Text("Разработано")
                                .font(.system(size: 40,weight: .medium))
                                .foregroundColor(Color("Color_font"))
                            Text("Banana project")
                                .font(.system(size: 40,weight: .medium))
                                .foregroundColor(Color("Color_banana"))
                            Text("перейти на сайт")
                                .font(.system(size: 26,weight: .medium))
                                .foregroundColor(Color("Color_font_3"))
                        } .multilineTextAlignment(.leading)
                        Spacer()
                        VStack(alignment: .leading){
                            Text("Советы и \nпредложения")
                                .font(.system(size: 34,weight: .medium))
                                .foregroundColor(Color("Color_font"))
                                .padding(.top,100)
                            Text("support@banana.ru")
                                .font(.system(size: 34,weight: .medium))
                                .tint(Color("Color_font_3"))
                            
                        } .multilineTextAlignment(.leading)
                    }.frame(height: .infinity)
                    .padding(.horizontal,15)
                       
                      
                    Spacer()
                }.padding(5)
                
            
            
        }
    }
}

struct AboutUs_Screen_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs_Screen()
    }
}
