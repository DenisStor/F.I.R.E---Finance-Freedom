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
   
    let currencies = ["USD", "EUR", "ZLT", "RUB","UAH"]
    @State private var isAlert : Bool = false
    @State private var isAlert1 : Bool = false
    @State private var isSheet1 : Bool = false
    @State private var isSheet2 : Bool = false
    @State private var isSheet3 : Bool = false
      @AppStorage ("Start") var Start : Double = 0
      @AppStorage ("InMonth") var InMonth : Double = 0
      @AppStorage ("year") var year : Double = 1
      @AppStorage ("Rate") var Rate : Int = 4
      @AppStorage ("earnMoney") var earnMoney : String = "" // строка зарабаток
      @AppStorage ("spendMoney") var spendMoney : String = "" // строка трат
      @AppStorage ("howMuch") var howmuch : Int = 0
    @AppStorage ("test1")  var test1 : Int = 0
    @AppStorage ("test_1")  var test_1 : Int = 0
    @Environment (\.requestReview) var requestReview : RequestReviewAction
    @Environment(\.openURL) var openURL
    var body: some View {
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false) {
                VStack(spacing:15){
                    HStack {
                        Text("sb4")
                            .font(.system(size: 30,weight: .medium))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color("Color_font"))
                        Spacer()
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                        HStack {
                            Text("svr")
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
                            
                        }.padding(.horizontal,20)
                    }.frame(height: 90)
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                        HStack {
                            Text("Fbq"  )
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
                                
                        }.padding(.horizontal,20)
                    }.frame(height: 90).onTapGesture {
                        isSheet2 = true
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                        HStack {
                            Text("vrr")
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
                        }.padding(.horizontal,20)
                    }.frame(height: 90)
                        .onTapGesture {
                            isSheet1 = true
                        }
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                        HStack {
                            Text("htw")
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
                        }.padding(.horizontal,20)
                    }.frame(height: 90)
                        .onTapGesture {
                            isSheet3 = true
                        }
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                        HStack {
                            Text("tgb")
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
                        }.padding(.horizontal,20)
                    }.frame(height: 90)
                        .onTapGesture {
                            requestReview()
                        }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_font_1"))
                            
                        Text("vow")
                            .foregroundColor(Color("Color_font_2"))
                            .font(.system(size: 20,weight: .medium))
                    }.frame(height: 60)
                        .onTapGesture {
                            isAlert = true
                        }
                    RoundedRectangle (cornerRadius: 0)
                        .frame(height: 100)
                        .opacity(0)
                }.padding(.horizontal,15)
            }.alert(isPresented: $isAlert) {
                Alert(
                    title: Text("1setd"),
                    message: Text("2setd"),
                    primaryButton: .destructive(Text("3setd")) {
                     
                        Start = 0
                        InMonth = 0
                        spendMoney = ""
                        earnMoney = ""
                        year = 1
                        Rate = 4
                        test1 = 0
                        test_1 = 0
                        selected = "USD"
                         isAlert1 = true
                    },
                    secondaryButton: .cancel()
                )
            }
            .alert("Данные удалены", isPresented: $isAlert1) {
                        Button("OK", role: .cancel) { }
                    }
            .sheet(isPresented: $isSheet1) {
                VStack(spacing:15){
                    HStack{
                        Text("cwq")
                            .font(.system(size: 30,weight: .medium))
                            .multilineTextAlignment(.leading)
                    Spacer()
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                        HStack {
                            Text("bqcw")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font"))
                            Spacer()
                            Image("vk")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font_2"))
                                
                                
                                
                                
                        }.padding(.horizontal,20)
                    }.frame(height: 90)
                        .onTapGesture {
                            openURL(URL(string: NSLocalizedString("https://vk.com/freefinapp", comment: "VK"))!)
                        }
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                        HStack {
                            Text("Huwy")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font"))
                            Spacer()
                            Image("tg")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font_2"))
                                
                                
                                
                                
                        }.padding(.horizontal,20)
                    }.frame(height: 90)
                        .onTapGesture {
                            openURL(URL(string: NSLocalizedString("https://t.me/financefire", comment: "TG"))!)
                        }
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                        HStack {
                            Text("wfawg")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font"))
                            Spacer()
                            Image("you")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font_2"))
                                
                                
                                
                                
                        }.padding(.horizontal,20)
                    }.frame(height: 90)
                        .onTapGesture {
                            openURL(URL(string: NSLocalizedString("https://www.youtube.com/channel/UC8EuiXpG9JPQN1kdXAAujxA", comment: "YOUTUBE"))!)
                        }
                    Spacer()
                }.padding(.horizontal,15)
                    .padding(.top,50)
            }
            .sheet(isPresented: $isSheet2) {
                VStack(spacing:30){
                    
                   Image("Logo_o_us")
                        
                        .padding(.horizontal,40)
                        .aspectRatio(contentMode: .fit)
                      
                    VStack(spacing:20){
                        Text("F.I.R.E")
                            .foregroundColor(Color("Color_font"))
                            .font(.system(size: 30,weight: .semibold))
                        VStack(spacing:20){
                            Text("verr")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 15,weight: .medium))
                                .multilineTextAlignment(.center)
                            Text("ver 1.0")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 16,weight: .medium))
                                .multilineTextAlignment(.center)
                        }.opacity(0.5)
                            .padding(.horizontal,20)
                    }.padding(.bottom,40)
                    
                    VStack(spacing:20){
                        Image("logo_machine")
                        Text("Okay Machine")
                            .foregroundColor(Color("Color_font"))
                            .font(.system(size: 15,weight: .medium))
                            .multilineTextAlignment(.center)
                            .opacity(0.5)
                    }
                  
                }.padding(.horizontal,15)
                    .padding(.vertical,5)
            }
            .sheet(isPresented: $isSheet3) {
                VStack(spacing:15){
                    HStack{
                        Text("wwtki")
                            .font(.system(size: 30,weight: .medium))
                            .multilineTextAlignment(.leading)
                    Spacer()
                    } .onTapGesture {
                        openURL(URL(string: NSLocalizedString("https://www.youtube.com/channel/UC8EuiXpG9JPQN1kdXAAujxA", comment: "YOUTUBE"))!)
                    }
                  
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                        HStack {
                            Text("ebwww")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font"))
                            Spacer()
                            Image("tg")
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font_2"))
                                
                                
                                
                                
                        }.padding(.horizontal,20)
                    }.frame(height: 90)
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                        VStack (spacing:5) {
                            HStack {
                                Text("vewegh")
                                    .font(.system(size: 15,weight: .medium))
                                    .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font"))
                                .opacity(0.5)
                                Spacer()
                            }
                         
                            HStack {
                                Text("fireapp@inbox.ru")
                                    .font(.system(size: 25,weight: .medium))
                                    .multilineTextAlignment(.leading)
                                .tint(Color("Color_font_1"))
                                Spacer()
                            }
                                
                                
                                
                        }.multilineTextAlignment(.leading)
                        .padding(.horizontal,20)
                    }.frame(height: 100)
                    Spacer()
                }.padding(.horizontal,15)
                    .padding(.top,50)
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
