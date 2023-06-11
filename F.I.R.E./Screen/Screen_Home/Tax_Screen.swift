//
// Tax_Screen.swift
// F.I.R.E.
//
// Created by Никита Малыхин on 27.05.2023.
//

import SwiftUI

struct Tax_Screen: View {
    var body: some View {
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false){
                VStack (alignment: .leading, spacing: 15) {
                    HStack{
                        Text("nalogiName")
                            .font(.system(size: 37.5, weight: .semibold))
                            .foregroundColor(Color("Color_font_1"))
                        Spacer()
                    }
                    
                    HStack{
                        Text("nalog1")
                            .font(.system(size: 23, weight: .semibold))
                            .lineSpacing(4)
                        
                    }
                    
                    Divider()
                        .frame(height: 2)
                        .overlay(Color("Color_button"))
                    
                    
                    Group {
                        
                        HStack {
                            Text("znaknalogi")
                                .font(.system(size: 59.5, weight: .semibold))
                                .foregroundColor(Color("Color_font_1"))
                        }
                        
                        HStack{
                            Text("textNalogi1")
                                .font(.system(size: 23, weight: .semibold))
                                .foregroundColor(Color("Color_font"))
                                .lineSpacing(4)
                        }
                        
                    }
                    Divider()
                        .frame(height: 2)
                        .overlay(Color("Color_button"))
              
                    Group {
                        
                        HStack {
                            Text("titleNalogi2")
                                .font(.system(size: 59.5, weight: .semibold))
                                .foregroundColor(Color("Color_font_1"))
                        }
                        
                        HStack{
                            Text("textNalogi2")
                                .font(.system(size: 23, weight: .semibold))
                                .foregroundColor(Color("Color_font"))
                                .lineSpacing(4)
                        }
                    }
                    
                    Divider()
                        .frame(height: 2)
                        .overlay(Color("Color_button"))
                    
                    Group {
                        
                        HStack {
                            Text("titleNalogi3")
                                .font(.system(size: 59.5, weight: .semibold))
                                .foregroundColor(Color("Color_font_1"))
                        }
                        
                        HStack{
                            Text("textNalogi3")
                                .font(.system(size: 23, weight: .semibold))
                                .foregroundColor(Color("Color_font"))
                                .lineSpacing(4)
                        }
                    }

                    
                }.padding(25)
            }
        }
    }
    struct Tax_Screen_Previews: PreviewProvider {
        static var previews: some View {
            Tax_Screen()
        }
    }
}
