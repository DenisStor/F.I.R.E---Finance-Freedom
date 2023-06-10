//
//  AboutFIRE_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 20.05.2023.
//

import SwiftUI

struct AboutFIRE_Screen: View {
    
    @State private var ImageBook : [String] = ["book1","book2","book3","book4"]
    @State private var TextBook : [String] = ["Financial Freedom: A Proven Path To All The Money You Will Ever Need by Grant Sabatier","Set for Life by Scott Trench","The 4-Hour Workweek by Tim Ferriss","Your Money or Your Life by Vicki Robin & Joe Dominguez"]
    var body: some View {
        ZStack {
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading, spacing: 30){
                    VStack(spacing: 30){
                        HStack{
                            Image("logoFire")
                            Spacer()
                        }
                        HStack{
                            Text("FIRE как образ \nжизни")
                                .font(.system(size: 38,weight: .medium))
                                .foregroundColor(Color("Color_font_1"))
                            Spacer()
                        }
                        HStack{
                            Text("Движение FIRE появилось в США в 90-х годах, а его основные идеи получили развитие благодаря книге 1992 года «Кошелек или жизнь»")
                                .font(.system(size: 23,weight: .semibold))
                                .foregroundColor(Color("Color_font"))
                            Spacer()
                          
                        
                    
                        }
                        Divider()
                            .frame(height: 2)
                            .overlay(Color("Color_button"))
                    }
                  
                    VStack(spacing: 30){
                        HStack{
                            Text("Драйвером FIRE стал резкий рост цен на недвижимость в США в 2000-х годах. Молодые люди поняли, что не потянут покупку квартиры.")
                                .font(.system(size: 23,weight: .semibold))
                                .foregroundColor(Color("Color_font"))
                            Spacer()
                        }
                        
                        HStack{
                            Text("Стоимость недвижимости")
                                .font(.system(size: 17,weight: .semibold))
                                .foregroundColor(Color("Color_font_3"))
                            Spacer()
                            
                        }
                        HStack{
                            Image("grafik")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        HStack{
                            Text("Высокая норма сбережений")
                                .font(.system(size: 36,weight: .semibold))
                                .foregroundColor(Color("Color_font"))
                            Spacer()
                        }
                        HStack{
                            Text("Является основным принципом FIRE. Говоря о высокой норме сбережений, мы не преувеличиваем.Это не привычная доля в 10—15% от зарплаты, а 50% и даже 75% от дохода.")
                                .font(.system(size: 23,weight: .semibold))
                                .foregroundColor(Color("Color_font"))
                            Spacer()
                        }
                        VStack(spacing:10){
                            HStack{
                                Text("Полезная \nлитература")
                                    .font(.system(size: 36,weight: .semibold))
                                    .foregroundColor(Color("Color_font_1"))
                                Spacer()
                            }
                            HStack{
                                Text("Команда FIRE Рекомендует")
                                    .font(.system(size: 21,weight: .semibold))
                                    .foregroundColor(Color("Color_font_3"))
                                Spacer()
                            }
                            VStack(spacing:30){
                                ForEach(0...3 ,id: \.self) { index in
                                    HStack {
                                        Image(ImageBook[index])
                                           // .resizable()
                                           // .aspectRatio(contentMode: ContentMode.fit)
                                            .cornerRadius(10)
                                        VStack {
                                            Text(TextBook[index])
                                                .font(.system(size: 21,weight: .semibold))
                                            .foregroundColor(Color("Color_font"))
                                            Spacer()
                                        }
                                        Spacer()
                                    }
                                }
                               
                            }.padding(.vertical,20)
                        }
                        
                    }
                } .padding(.horizontal,15)
            }
        }
    }
}
struct AboutFIRE_Screen_Previews: PreviewProvider {
    static var previews: some View {
        AboutFIRE_Screen()
    }
}
