//
//  Tax_Screen.swift
//  F.I.R.E.
//
//  Created by Никита Малыхин on 27.05.2023.
//

import SwiftUI

struct Tax_Screen: View {
    var body: some View {
        ZStack {
            ScrollView(showsIndicators: false){
                VStack {
                    HStack {
                        
                        VStack (alignment: .leading){
                         
                            Text("Налоги")
                                .font(.system(size: 37.5, weight: .semibold))
                                .foregroundColor(Color(#colorLiteral(red: 0.93, green: 0.25, blue: 0.25, alpha: 1)))
                                .padding(.top, 10)
                            Text("Большую часть налогов за инвестора платит налоговый агент (брокер или банк) — самому обращаться в налоговую не нужно.")
                                .font(.system(size: 23, weight: .semibold))
                                .lineSpacing(3)
                                
                               
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
                                   
                                    Text("₽")
                                    
                                   
                                        .font(.system(size: 60, weight: .medium))
                                        .foregroundColor(Color("Color_font_2"))
                                    
                                    Spacer()
                                    
                                    
                                }
                                ZStack {
                                    VStack (alignment: .leading){
                                        
                                        HStack {
                                            Text("Расчёты перед бюджетом — только в рублях. Доходы по операциям с ценными бумагами, выраженные в иностранной валюте, пересчитываются в рубли.")
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
                            .frame(height: 315)
                        ZStack {
                            
                            VStack(alignment: .leading) {
                                
                                HStack {
                                   
                                    Text("НДФЛ")
                                    
                                   
                                        .font(.system(size: 60, weight: .medium))
                                        .foregroundColor(Color("Color_font_1"))
                                    
                                 Spacer()
                                    
                                    
                                }
                                ZStack {
                                    VStack (alignment: .leading){
                                        
                                        HStack {
                                            Text("Расчёты перед бюджетом — только в рублях. Доходы по операциям с ценными бумагами, выраженные в иностранной валюте, пересчитываются в рубли.")
                                                .font(.system(size: 23, weight: .semibold))
                                                .foregroundColor(Color("Color_black"))
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
                            .frame(height: 290)
                        ZStack {
                            
                            VStack(alignment: .leading) {
                                
                                HStack {
                                   
                                    Text("ДОХОД")
                              
                                    
                                   
                                        .font(.system(size: 60, weight: .medium))
                                        .foregroundColor(Color("Color_font_1"))
                                    
                                    Spacer()
                                    
                                    
                                }
                                ZStack {
                                    VStack (alignment: .leading){
                                        
                                        HStack {
                                            Text("Обложению НДФЛ подлежат доходы от реализации ценных бумаг за вычетом соответствующих расходов.")
                                                .font(.system(size: 23, weight: .semibold))
                                                .foregroundColor(Color("Color_black"))
                                                .lineSpacing(3)
                                               Spacer()
                                           
                                            
                                            
                                        }
                                    }
                                }
                            }
                        } .padding(.horizontal,15)
                    }
                    
                    }
                    
                    
            } .padding(.horizontal,15)
            }
        }
    }
    struct Tax_Screen_Previews: PreviewProvider {
        static var previews: some View {
            Tax_Screen()
        }
    }

