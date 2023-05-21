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
    @AppStorage ("Year") var Year : Double = 1
    @AppStorage ("Rate") var Rate : Int = 4
    @State private var Sheet : Bool = false
    var body: some View {
        ZStack {
            Color("Color_back")
            
                .edgesIgnoringSafeArea(.all)
                
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20){
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
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .frame(height: 300)
                            .foregroundColor(Color("Color_Start"))
                        VStack(alignment: .leading,spacing:0){
                            VStack{
                                
                                Text("Выбрать риск профиль")
                                    .font(.system(size: 33,weight: .medium))
                                    .foregroundColor(Color("Color_font"))
                                
                            }
                            VStack{
                                Picker(selection: $Rate, label: Text("Choose")) {
                                    Text("4%").tag(4)
                                    Text("8%").tag(8)
                                    Text("12%").tag(12)
                                    Text("20%").tag(20)
                                }.pickerStyle(.inline)
                                    .frame(height: 150)
                            }
                            VStack{
                                HStack{
                                    Text("что это такое?")
                                    Image(systemName: "info.circle")
                                }.foregroundColor(Color("Color_font_3"))
                                
                            }
                            .onTapGesture {
                                Sheet = true
                            }
                            
                            
                        }.padding(.horizontal,20)
                            .foregroundColor(Color("Color_font_2"))
                            .font(.system(size: 22,weight: .medium))
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .frame(height: 200)
                            .foregroundColor(Color("Color_Start"))
                        VStack(alignment: .leading,spacing: 0){
                            HStack{
                              Text("Ваш капитал \nсоставит")
                                    .font(.system(size: 30,weight: .medium))
                                    .foregroundColor(Color("Color_font"))
                                  
                            }
                            HStack{
                                Text("\(Int(data.calculate(capital: Start, rate: Double(Rate), monthlyDeposit: InMonth, numberOfYears: Int(Year))))")
                                    .font(.system(size: 50,weight: .medium))
                                    .foregroundColor(Color("Color_font_1"))
                                Text("$")
                                    .font(.system(size: 50,weight: .medium))
                                    .foregroundColor(Color("Color_font_1"))
                                Spacer()
                            }
                        }.padding(.horizontal,20)
                    }
                    
                }
            }.padding(.horizontal,15)
                .sheet(isPresented: $Sheet) {
                    VStack{
                        Text("Риск-профиль или инвестиционный профиль участника рынка — это оценка его толерантности к риску. Со всем этим может помочь разобраться определение риск-профиля, которое, кстати, используется для того, чтобы затем выбрать подходящие именно для вас и реализации вашей цели финансовые инструменты и сформировать удобную для вас инвестстратегию.")
                            .font(.system(size: 25,weight: .medium))
                            .foregroundColor(Color("Color_font"))
                            .multilineTextAlignment(.leading)
                    }.padding(20)
                    }
        }.toolbar(.hidden, for: .tabBar)
    }
}

struct Procent_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Procent_Screen()
    }
}
