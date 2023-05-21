//
//  Procent_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 21.05.2023.
//

import SwiftUI

struct Procent_Screen: View {
    @StateObject var data = calculator()
    
    @AppStorage ("Start") var Start : Double = 0
    @AppStorage ("InMonth") var InMonth : Double = 0
    @AppStorage ("Year") var Year : Double = 9.0
    
    var body: some View {
        ZStack {
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false) {
                VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .frame(height: 180)
                            .foregroundColor(Color("Color_font_1"))
                        HStack{
                            VStack(alignment: .leading,spacing: 10){
                                Text("Сколько вы готовы откладывать")
                                    .font(.system(size: 33,weight: .medium))
                                    .foregroundColor(Color("Color_font_2"))
                                HStack {
                                    TextField("в месяц",value: $InMonth, format: .number)
                                        .font(.system(size: 33))
                                        .padding(.horizontal,15)
                                        .foregroundColor(Color("Color_procent_text"))
                                        .background{
                                            RoundedRectangle(cornerRadius: 15)
                                                .foregroundColor(Color("Color_font_2"))
                                               
                                    }
                                    Text("$")
                                        .font(.system(size: 33,weight: .medium))
                                        .foregroundColor(Color("Color_font_2"))
                                    Spacer()
                                }
                            }
                        }.padding(.horizontal,20)
                        Spacer()
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .frame(height: 350)
                            .foregroundColor(Color("Color_Start"))
                    VStack{
                        HStack{
                            VStack(alignment: .leading,spacing: 10){
                                Text("Стартовый \nкапитал")
                                    .font(.system(size: 33,weight: .medium))
                                    .foregroundColor(Color("Color_font"))
                                HStack {
                                    TextField("стартовый",value: $Start, format: .number)
                                        .font(.system(size: 33))
                                        .padding(.horizontal,15)
                                        .foregroundColor(Color("Color_procent_text"))
                                        .background{
                                            RoundedRectangle(cornerRadius: 15)
                                                .foregroundColor(Color("Color_font_2"))
                                            
                                        }
                                    Text("$")
                                        .font(.system(size: 33,weight: .medium))
                                        .foregroundColor(Color("Color_font"))
                                    Spacer()
                                }
                            }
                        }.padding(.horizontal,20)
                        
                        RoundedRectangle(cornerRadius: 30)
                            .frame(height: 5)
                            .foregroundColor(Color("Color_font_2"))
                            .opacity(0.4)
                        HStack{
                            VStack(alignment: .leading,spacing: 10){
                                Text("Количество лет")
                                    .font(.system(size: 33,weight: .medium))
                                    .foregroundColor(Color("Color_font"))
                                VStack(spacing: 0) {
                                    
                                    
                                            Slider(value: $Year, in: 1...70) {
                                                Text("Slider")
                                            } minimumValueLabel: {
                                                Text("1").font(.title2).fontWeight(.thin)
                                            } maximumValueLabel: {
                                                Text("70").font(.title2).fontWeight(.thin)
                                            }.tint(.red)
                                        .padding(.top,30)
                                    Text("\(Int(Year))")
                                        .font(.system(size: 21,weight: .medium))
                                        .foregroundColor(Color("Color_font_3"))
                                        
                                    Spacer()
                                }
                            }
                        }.padding(.horizontal,20)
                    }.padding(.top,20)
                        
                    }
                }
            }.padding(.horizontal,10)
        }
    }
}

struct Procent_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Procent_Screen()
    }
}
