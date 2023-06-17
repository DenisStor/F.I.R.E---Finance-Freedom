//
//  Procent_Screen_Final.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 17.06.2023.
//

import SwiftUI
import Combine

struct Procent_Screen: View {
    @StateObject var data = Calculator()
    
    @AppStorage ("Start") var Start : String = ""
    @AppStorage ("InMonth") var InMonth : String = ""
    @AppStorage ("year") var year : Double = 1
    @AppStorage ("Rate") var Rate : Int = 4
    
    
    @FocusState var isInputActive: Bool
    @FocusState var isInputActive_1: Bool
    
    let characterLimit : Int = 8
    @State private var Total : Double = 0
    
    

        var minValue: Double = 0
        var maxValue: Double = 50

    
    var body: some View {
        
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            
            
            ScrollView {
                VStack(spacing:20){
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_font_1"))
                            .frame(height: 180)
                        VStack(spacing: 10){
                            HStack{
                                Text("Сколько вы готовы откладывать")
                                    .font(.system(size: 25,weight: .medium))
                                    .foregroundColor(Color("Color_font_2"))
                                
                                Spacer()
                            }
                            TextField("safeMoney2", text: $InMonth,
                                      prompt: Text("safeMoney2")
                                .foregroundColor(Color("textField")))
                            .foregroundColor(Color("Color_black"))
                            .onReceive(Just(InMonth)) { index in
                                
                                if TextIs(InMonth) {
                                    limitDigits(characterLimit)
                                }
                                else {
                                    InMonth = ""
                                }
                                
                            }
                            
                            
                            .font(.system(size: 25,weight: .medium))
                            .frame(height: 45)
                            .padding(.horizontal,15)
                            .tint(.red)
                            
                            .background{
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(Color("Color_font_2"))
                                
                            }
                            .overlay {
                                HStack{
                                    Spacer()
                                    Text("$")
                                        .font(.system(size: 25,weight: .medium))
                                        .foregroundColor(Color("Color_black"))
                                        .opacity(0.5)
                                }.padding(.horizontal,15)
                            }
                            .keyboardType(.numberPad)
                            .focused($isInputActive)
                        }.padding(.vertical,15)
                            .padding(.horizontal,15)
                        
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                            .frame(height: 180)
                        VStack(spacing: 10){
                            HStack{
                                Text("Ваш стартовый\nкапитал")
                                    .font(.system(size: 25,weight: .medium))
                                    .foregroundColor(Color("Color_black"))
                                
                                Spacer()
                            }
                            TextField("safeMoney2", text: $Start,
                                      prompt: Text("safeMoney2")
                                .foregroundColor(Color("textField")))
                            .foregroundColor(Color("Color_black"))
                            .onReceive(Just(Start)) { index in
                                
                                if TextIs1(Start) {
                                    limitDigits1(characterLimit)
                                }
                                else {
                                    Start = ""
                                }
                                
                            }
                            
                            
                            .font(.system(size: 25,weight: .medium))
                            .frame(height: 45)
                            .padding(.horizontal,15)
                            .tint(.red)
                            
                            .background{
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(Color("Color_font_2"))
                                
                            }
                            .overlay {
                                HStack{
                                    Spacer()
                                    Text("$")
                                        .font(.system(size: 25,weight: .medium))
                                        .foregroundColor(Color("Color_black"))
                                        .opacity(0.5)
                                }.padding(.horizontal,15)
                            }
                            .keyboardType(.numberPad)
                            .focused($isInputActive)
                        }.padding(.vertical,15)
                            .padding(.horizontal,15)
                        
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                            .frame(height: 180)
                        VStack(spacing: 0){
                            HStack{
                                Text("Количество\nлет")
                                    .font(.system(size: 25,weight: .medium))
                                    .foregroundColor(Color("Color_black"))
                                
                                Spacer()
                            }
                            
                            Slider(value: $year,in: 1...50,step:1)
                            Text("\(Int(year))")
       
                             
                            
                        }.padding(.horizontal,15)
                            .padding(.vertical,15)
                            .tint(Color("Color_font_1"))
                        
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color_button"))
                            .frame(height: 190)
                        VStack(spacing: 30){
                            HStack{
                                Text("Риск профиль")
                                    .font(.system(size: 25,weight: .medium))
                                    .foregroundColor(Color("Color_black"))
                                
                                Spacer()
                            }
                           
                                HStack{
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 20)
                                            .foregroundColor(Rate == 4 ? Color("Color_font_1") : Color("Color_font_2"))
                                        
                                        Text("4%")
                                            .font(.system(size: 25,weight: .medium))
                                            .foregroundColor(Rate == 4 ? Color("Color_font_2") : Color("Color_black"))
                                        
                                    }.onTapGesture {
                                        Rate = 4
                                    }
                                    
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 20)
                                            .foregroundColor(Rate == 8 ? Color("Color_font_1") : Color("Color_font_2"))
                                        
                                        Text("8%")
                                            .font(.system(size: 25,weight: .medium))
                                            .foregroundColor(Rate == 8 ? Color("Color_font_2") : Color("Color_black"))
                                        
                                    }.onTapGesture {
                                        Rate = 8
                                    }
                                   
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 20)
                                            .foregroundColor(Rate == 12 ? Color("Color_font_1") : Color("Color_font_2"))
                                        
                                        Text("12%")
                                            .font(.system(size: 25,weight: .medium))
                                            .foregroundColor(Rate == 12 ? Color("Color_font_2") : Color("Color_black"))
                                        
                                    }.onTapGesture {
                                        Rate = 12
                                    }
                                    
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 20)
                                            .foregroundColor(Rate == 20 ? Color("Color_font_1") : Color("Color_font_2"))
                                        
                                        Text("20%")
                                            .font(.system(size: 25,weight: .medium))
                                            .foregroundColor(Rate == 20 ? Color("Color_font_2") : Color("Color_black"))
                                        
                                    }.onTapGesture {
                                        Rate = 20
                                    }
                                    
                                }.frame(height: 60)
                            
                          
                        }.padding(.vertical,15)
                            .padding(.horizontal,15)
                        
                    }
                    VStack(spacing:10){
                        HStack{
                            Text("Ваш капитал\nсоставит")
                                .foregroundColor(Color("Color_black"))
                                .font(.system(size: 30,weight: .medium))
                            Spacer()
                        }
                        HStack{
                            Text("\(formatCurrency(_:Total))")
                                .foregroundColor(Color("Color_font_1"))
                                .font(.system(size: 45,weight: .medium))
                                .onChange(of: InMonth) { _ in
                                        updateTotal()
                                    }
                                    .onChange(of: Start) { _ in
                                        updateTotal()
                                    }
                                    .onChange(of: year) { _ in
                                        updateTotal()
                                    }
                                    .onChange(of: Rate) { _ in
                                        updateTotal()
                                    }
                                    .onAppear {
                                        updateTotal()
                                    }
                                    .textSelection(.enabled)
                                    .lineLimit(1)
                            Spacer()
                        }
                        
                    }
                }
                .padding(.horizontal,15)
               
            }
        }
        
    }
    func TextIs(_ upper: String) -> Bool {
        
        for character in InMonth {
            if character.isLetter {
                print("Ошибка: символ '\(character)' является буквой")
                return false
            } else if character.isNumber {
                print("Символ '\(character)' является цифрой")
                
            }
        }
        return true
    }

    func limitDigits(_ upper: Int) {
        let digitOnly = InMonth.filter {$0.isNumber }
        if digitOnly.count > upper {
            InMonth = String(digitOnly.prefix(upper))
        }
    }
    func TextIs1(_ upper: String) -> Bool {
        
        for character in Start {
            if character.isLetter {
                print("Ошибка: символ '\(character)' является буквой")
                return false
            } else if character.isNumber {
                print("Символ '\(character)' является цифрой")
                
            }
        }
        return true
    }

    func limitDigits1(_ upper: Int) {
        let digitOnly = Start.filter {$0.isNumber }
        if digitOnly.count > upper {
            Start = String(digitOnly.prefix(upper))
        }
    }
    func formatCurrency(_ number: Double) -> String {
        let formatforvalute = NumberFormatter()
        formatforvalute.numberStyle = .currency
        
        
        let locale = Locale.current
        
        
        formatforvalute.locale = locale
        
        return formatforvalute.string(from: NSNumber(value: number)) ?? ""
    }
    func updateTotal() {
        Total = Double(data.calculate(capital: Float(Start) ?? 0, rate: Float(Rate), monthlyDeposit: Float(InMonth) ?? 0, numberOfYears: Int(year)))
    }
}



struct Procent_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Procent_Screen()
    }
}
