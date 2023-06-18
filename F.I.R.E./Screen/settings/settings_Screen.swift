//
//  settings_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 18.06.2023.
//

import SwiftUI
import StoreKit

struct settings_Screen: View {
    @AppStorage ("money.localize") var selected: String = "USD"
   
    let currencies = ["USD", "EUR", "ZLT", "RUB"]
    
    var body: some View {
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false) {
                VStack(spacing:15){
                    HStack {
                        Text("Настройки")
                            .font(.system(size: 30,weight: .medium))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color("Color_font"))
                        Spacer()
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                        HStack {
                            Text("Выбор валюты")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font"))
                            Spacer()
                            Picker("Выберите валюту", selection: $selected) {
                                ForEach(currencies, id: \.self) { currency in
                                    Text(currency)
                                        .font(.system(size: 20,weight: .medium))
                                        .multilineTextAlignment(.leading)
                                }
                            }.tint(Color("Color_font_1"))
                            .pickerStyle(.menu)
                            
                        }.padding(.horizontal,15)
                    }.frame(height: 90)
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                        HStack {
                            Text("Версия приложения")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font"))
                            Spacer()
                            Image(systemName: "info.circle.fill")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font_2"))
                                .padding(10)
                                .background(
                                Circle()
                                    .foregroundColor(Color("Color_font_1"))
                                
                                
                                )
                                
                        }.padding(.horizontal,15)
                    }.frame(height: 90)
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                        HStack {
                            Text("Мы в соцсетях")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font"))
                            Spacer()
                            Image(systemName: "hand.thumbsup.fill")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font_2"))
                                .padding(10)
                                .background(
                                Circle()
                                    .foregroundColor(Color("Color_font_1"))
                                
                                
                                )
                        }.padding(.horizontal,15)
                    }.frame(height: 90)
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                        HStack {
                            Text("Мы в соцсетях")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font"))
                            Spacer()
                            Image(systemName: "questionmark.circle.fill")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font_2"))
                                .padding(10)
                                .background(
                                Circle()
                                    .foregroundColor(Color("Color_font_1"))
                                
                                
                                )
                        }.padding(.horizontal,15)
                    }.frame(height: 90)
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                        HStack {
                            Text("Мы в соцсетях")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font"))
                            Spacer()
                            Image(systemName: "star.fill")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font_2"))
                                .padding(10)
                                .background(
                                Circle()
                                    .foregroundColor(Color("Color_font_1"))
                                
                                
                                )
                        }.padding(.horizontal,15)
                    }.frame(height: 90)
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                        HStack {
                            Text("Поделиться")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font"))
                            Spacer()
                            Image(systemName: "square.and.arrow.up")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font_2"))
                                .padding(10)
                                
                                .background(
                                Circle()
                                    .foregroundColor(Color("Color_font_1"))
                                
                                
                                )
                        }.padding(.horizontal,15)
                    }.frame(height: 90)
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_font_1"))
                            
                        Text("Сбросить кеш")
                            .foregroundColor(Color("Color_font_2"))
                            .font(.system(size: 20,weight: .medium))
                    }.frame(height: 60)
                        .onTapGesture {
                            
                        }
                    RoundedRectangle (cornerRadius: 0)
                        .frame(height: 100)
                        .opacity(0)
                }.padding(.horizontal,15)
            }
        }
    }
    func currencyText ( _string: String) -> String {
       
            let ammo: Double = Double(_string)!
            let formatt = NumberFormatter()
            
            formatt.numberStyle = .currency
            formatt.currencyCode = selected
            if let formattammo = formatt.string(from: NSNumber(value: ammo)) {
                return formattammo
            } else {
                return "Erorre"
            }
        
    }
}

struct settings_Screen_Previews: PreviewProvider {
    static var previews: some View {
        settings_Screen()
    }
}
