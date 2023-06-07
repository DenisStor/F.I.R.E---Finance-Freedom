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
            ScrollView(showsIndicators: false){
                VStack {
                    HStack {
                        
                        VStack (alignment: .leading){
                            Image("logoFire")
                            Text("FIRE как образ\nжизни")
                                .font(.system(size: 37.5, weight: .semibold))
                                .foregroundColor(Color("Color_font_1"))
                                .padding(.top, 10)
                                .padding(.bottom,5)
                            
                            Text("Движение FIRE появилось в США в 90-х годах, а его основные идеи получили развитие благодаря книге 1992 года «Кошелек или жизнь»")
                                .font(.system(size: 23, weight: .semibold))
                                .lineSpacing(4)
                                .padding(.vertical,10)
                                
                                Text("“Время жизни ценнее материальных вещей”")
                                .font(.system(size: 30, weight: .semibold))
                                
                            Spacer()
                            
                            
                        }
                        
                    }
                    
                    
                    
                    ZStack {
                        ZStack {
                            
                            VStack(alignment: .leading) {
                                ZStack {
                                    VStack (alignment: .leading){
                                        
                                        HStack {
                                            Text("Чтобы скопить капитал и наконец перестать «работать ради жизни», авторы призывают быть бережливыми, контролировать расходы и помнить, что сбережения должны покрывать будущие расходы.")
                                                .font(.system(size: 23, weight: .semibold))
                                                .foregroundColor(Color("Color_font_2"))
                                                .lineSpacing(3)
                                            Spacer()
                                            
                                            
                                            
                                        }
                                    }
                                }
                            }    .padding(20)
                            .background(
                                RoundedRectangle(cornerRadius: 30)
                                    .foregroundColor(Color("Color_font_1"))
                       
                                 
                            )  }.padding(.top, 10)
                    }
                    .padding(.top,10)
                
                    
                    Text("Драйвером FIRE стал резкий рост цен на недвижимость в США в 2000-х годах. Молодые люди поняли, что не потянут покупку квартиры.")
                        .font(.system(size: 23, weight: .semibold))
                        .padding(.top,20)
                        .lineSpacing(4)
                    Image("grafik")
                        .padding(.top,30)
                  
                }
                
               
            } .padding(.horizontal,15)
        }
    }
}
struct AboutFIRE_Screen_Previews: PreviewProvider {
    static var previews: some View {
        AboutFIRE_Screen()
    }
}
