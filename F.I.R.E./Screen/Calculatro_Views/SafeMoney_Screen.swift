//
//  safemoney_2.swift
//  F.I.R.E.
//
//  Created by Никита Малыхин on 23.05.2023.
//

import SwiftUI
import Combine

struct SafeMoney_Screen: View {
    
    @StateObject var data = Calculator()
    @AppStorage ("earnMoney") var earnMoney : String = "" // строка зарабаток
    @AppStorage ("spendMoney") var spendMoney : String = "" // строка трат
    let characterLimit = 8 // кол-во символов
    @FocusState var isInputActive: Bool
    @FocusState var isInputActive_1: Bool
    
    @State private var Total : Double = 0
    
    @State private var anim = false
    @AppStorage ("money.localize") var selected: String = "USD"
    enum Field: Hashable {
        case month
        case start
      }
    @FocusState private var focus: Field?
    var body: some View {
        ZStack {
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            
          
                VStack(spacing:0){
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
                                TextField("safeMoney2", text: $earnMoney,
                                          prompt: Text("safeMoney2")
                                    .foregroundColor(Color("textField")))
                                .foregroundColor(Color("Color_black"))
                                .onReceive(Just(earnMoney)) { index in
                                    
                                    if TextIs(earnMoney) {
                                        limitDigits(characterLimit)
                                    }
                                    else {
                                        earnMoney = ""
                                    }
                                    
                                }
                                .focused($focus, equals: .month)
                                
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
                                        switch selected {
                                        case "USD":
                                            Text("$")
                                                .font(.system(size: 25,weight: .medium))
                                                .foregroundColor(Color("Color_black"))
                                                .opacity(0.5)
                                        case "EUR":
                                            Text("€")
                                                .font(.system(size: 25,weight: .medium))
                                                .foregroundColor(Color("Color_black"))
                                                .opacity(0.5)
                                        case "ZLT":
                                            Text("zł")
                                                .font(.system(size: 25,weight: .medium))
                                                .foregroundColor(Color("Color_black"))
                                                .opacity(0.5)
                                        case "RUB":
                                            Text("₽")
                                                .font(.system(size: 25,weight: .medium))
                                                .foregroundColor(Color("Color_black"))
                                                .opacity(0.5)
                                        default:
                                            Text("erore")
                                        }
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
                                        .foregroundColor(Color("Color_font"))
                                    
                                    Spacer()
                                }
                                TextField("safeMoney2", text: $spendMoney,
                                          prompt: Text("safeMoney2")
                                    .foregroundColor(Color("textField")))
                                .foregroundColor(Color("Color_black"))
                                .onReceive(Just(spendMoney)) { index in
                                    
                                    if TextIs1(spendMoney) {
                                        limitDigits1(characterLimit)
                                    }
                                    else {
                                        spendMoney = ""
                                    }
                                    
                                }
                                .focused($focus, equals: .start)
                                
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
                                        switch selected {
                                        case "USD":
                                            Text("$")
                                                .font(.system(size: 25,weight: .medium))
                                                .foregroundColor(Color("Color_black"))
                                                .opacity(0.5)
                                        case "EUR":
                                            Text("€")
                                                .font(.system(size: 25,weight: .medium))
                                                .foregroundColor(Color("Color_black"))
                                                .opacity(0.5)
                                        case "ZLT":
                                            Text("zł")
                                                .font(.system(size: 25,weight: .medium))
                                                .foregroundColor(Color("Color_black"))
                                                .opacity(0.5)
                                        case "RUB":
                                            Text("₽")
                                                .font(.system(size: 25,weight: .medium))
                                                .foregroundColor(Color("Color_black"))
                                                .opacity(0.5)
                                        default:
                                            Text("erore")
                                        }
                                    }.padding(.horizontal,15)
                                }
                                .keyboardType(.numberPad)
                                .focused($isInputActive)
                            }.padding(.vertical,15)
                                .padding(.horizontal,15)
                            
                        }
                    }
                    Spacer()
                    VStack(spacing:10){
                        HStack{
                            Text("Вы можете\nпотратить")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 30,weight: .medium))
                            Spacer()
                        }
                        HStack{
                            Text("\(currencyText(_string: String(Total)))")
                                .foregroundColor(Color("Color_font_1"))
                                .font(.system(size: 45,weight: .medium))
                                .onChange(of: earnMoney) { _ in
                                        updateTotal()
                                    }
                                    .onChange(of: spendMoney) { _ in
                                        updateTotal()
                                    }
                                    .onAppear {
                                        updateTotal()
                                    }
                                    .textSelection(.enabled)
                                    .lineLimit(1)
                            Spacer()
                        }
                        
                    }.padding(.bottom,10)
                
                }.padding(.horizontal,15)
                .onTapGesture {
                    focus = nil
                  }
                .scrollDismissesKeyboard(.immediately)
                .ignoresSafeArea(.keyboard)
        }
    }
    func formatCurrency(_ number: Double) -> String {
        let formatforvalute = NumberFormatter()
        formatforvalute.numberStyle = .currency
        
        
        let locale = Locale.current
        
        
        formatforvalute.locale = locale
        
        return formatforvalute.string(from: NSNumber(value: number)) ?? ""
    }
    func TextIs(_ upper: String) -> Bool {
        
        for character in earnMoney {
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
        let digitOnly = earnMoney.filter {$0.isNumber }
        if digitOnly.count > upper {
            earnMoney = String(digitOnly.prefix(upper))
        }
    }
    func TextIs1(_ upper: String) -> Bool {
        
        for character in spendMoney {
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
        let digitOnly = spendMoney.filter {$0.isNumber }
        if digitOnly.count > upper {
            spendMoney = String(digitOnly.prefix(upper))
        }
    }
    func updateTotal() {
        Total = Double(data.spendEarn(earn: Float(earnMoney) ?? 0, spend: Float(spendMoney) ?? 0))
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
    
    
    struct SafeMoney_Screen_Previews: PreviewProvider {
        static var previews: some View {
            SafeMoney_Screen()
            
        }
    }

