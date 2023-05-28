//
// Tax_Screen.swift
// F.I.R.E.
//
// Created by Никита Малыхин on 27.05.2023.
//

import SwiftUI

struct Tax_Screen: View {
    var body: some View {
        ZStack {
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false){
                VStack {
                    HStack {
                        
                        VStack (alignment: .leading){
                            
                            Text("nalogiName")
                                .font(.system(size: 37.5, weight: .semibold))
                                .foregroundColor(Color(#colorLiteral(red: 0.93, green: 0.25, blue: 0.25, alpha: 1)))
                                .padding(.top, 10)
                            Text("nalog1")
                                .font(.system(size: 23, weight: .semibold))
                                .lineSpacing(4)
                                .padding(.top)
                                
                            Spacer()
                            
                            
                        }
                        
                    }
                    
                    
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_font_1"))
                            .frame(height: 315)
                            .padding(.top, 20)
                        ZStack {
                            
                            VStack(alignment: .leading) {
                                
                                HStack {
                                    
                                    Text("znaknalogi")
                                    
                                    
                                        .font(.system(size: 60, weight: .medium))
                                        .foregroundColor(Color("Color_font_2"))
                                    
                                    Spacer()
                                    
                                    
                                }
                                ZStack {
                                    VStack (alignment: .leading){
                                        
                                        HStack {
                                            Text("textNalogi1")
                                                .font(.system(size: 23, weight: .semibold))
                                                .foregroundColor(Color("Color_font_2"))
                                                .lineSpacing(3)
                                            Spacer()
                                            
                                            
                                            
                                        }
                                    }
                                }
                            } .padding(.horizontal,15)
                        }
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_Start"))
                            .frame(height: 215)
                       
                            
                            VStack(alignment: .leading) {
                                
                                HStack {
                                    
                                    Text("titleNalogi2")
                                    
                                    
                                        .font(.system(size: 60, weight: .medium))
                                        .foregroundColor(Color("Color_font_1"))
                                    
                                    Spacer()
                                    
                                    
                                }
                                
                                
                                    VStack (alignment: .leading){
                                        
                                        HStack {
                                            Text("textNalogi2")
                                                .font(.system(size: 23, weight: .semibold))
                                                .foregroundColor(Color("Color_font"))
                                                .lineSpacing(3)
                                            
                                           
                                            
                                            
                                            
                                        }
                                    
                                }
                            } .padding(.horizontal,15)
                        
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_Start"))
                            .frame(height: 350)
                        ZStack {
                            
                            VStack(alignment: .leading) {
                                
                                HStack {
                                    
                                    Text("titleNalogi3")
                                    
                                    
                                    
                                        .font(.system(size: 60, weight: .medium))
                                        .foregroundColor(Color("Color_font_1"))
                                    
                                    Spacer()
                                    
                                    
                                }
                                
                                    VStack (alignment: .leading){
                                        
                                        HStack {
                                            Text("textNalogi3")
                                                .font(.system(size: 23, weight: .semibold))
                                                .foregroundColor(Color("Color_font"))
                                                .lineSpacing(3)
                                            Spacer()
                                            
                                            
                                            
                                        }
                                    }
                                
                            }
                        } .padding(.horizontal,15)
                    }
                    
                }
                
                
            } .padding(15)
        }
    }
}
struct Tax_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Tax_Screen()
    }
}
