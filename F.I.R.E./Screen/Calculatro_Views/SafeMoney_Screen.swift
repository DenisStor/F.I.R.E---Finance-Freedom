//
//  safemoney_2.swift
//  F.I.R.E.
//
//  Created by Никита Малыхин on 23.05.2023.
//

import SwiftUI

struct SafeMoney_Screen: View {
    
    @StateObject var data = Calculator()
    @AppStorage ("earnMoney") var earnMoney : String = "" // строка зарабаток
    @AppStorage ("spendMoney") var spendMoney : String = "" // строка трат
    let characterLimit = 9 // кол-во символов
    @FocusState var isInputActive: Bool
    @FocusState var isInputActive_1: Bool
    
    
    
    var body: some View {
        ZStack {
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(Color("Color_font_1"))
                        .frame(height: 179)
                    VStack {
                        HStack {
                            Text("Сколько вы зарабатываете")
                                .font(.system(size: 33, weight: .medium))
                                .foregroundColor(Color("Color_font_2"))
                            
                            Spacer()
                        }
                        
                        HStack {
                            TextField("Введите число", text: Binding(
                                get: {
                                    self.earnMoney
                                },
                                set: { newValue in
                                    let filtered = newValue.filter { "0123456789".contains($0) }
                                    if filtered.count <= characterLimit {
                                        self.earnMoney = filtered
                                    }
                                }
                            ))
                            .font(.system(size: 20))
                            .padding(.horizontal,15)
                            .foregroundColor(Color("Color_black"))
                            .background{
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(Color("Color_font_2"))
                                    .frame(height: 45)
                            }
                            .keyboardType(.numberPad)
                            .focused($isInputActive)
                            
                            
                            Text("$")
                                .font(.system(size: 33,weight: .medium))
                                .foregroundColor(Color("Color_font_2"))
                            Spacer()
                            
                            
                            
                        }
                        
                        
                        
                        
                    }  .padding(.horizontal,15) // 1 колонка
                    
                    
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(Color("Color_Start"))
                        .frame(height: 233)
                    VStack {
                        HStack {
                            Text("Стоимость обязательных трат в месяц ")
                                .font(.system(size: 33, weight: .medium))
                                .foregroundColor(Color("Color_font"))
                            
                            Spacer()
                        }
                        
                        HStack {
                            TextField("Введите число", text: Binding(
                                get: {
                                    self.spendMoney
                                },
                                set: { newValue in
                                    let filtered = newValue.filter { "0123456789".contains($0) }
                                    if filtered.count <= characterLimit {
                                        self.spendMoney = filtered
                                    }
                                }
                            ))
                            .font(.system(size: 20))
                            .padding(.horizontal,15)
                            .foregroundColor(Color("Color_black"))
                            .background{
                                RoundedRectangle(cornerRadius: 13)
                                    .frame(height: 45)
                                    .foregroundColor(Color("Color_font_2"))
                                  
                            }
                            .keyboardType(.numberPad)
                            .focused($isInputActive)
                            
                            
                            Text("$")
                                .font(.system(size: 33,weight: .medium))
                                .foregroundColor(Color("Color_font"))
                            Spacer()
                            
                            
                        }
                        
                        
                        
                        
                    }  .padding(.horizontal,15) // 1 колонка
                    
                    
                    
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(Color("Color_Start"))
                        .frame(height: 250)
                    ZStack {
                        
                        VStack {
                            
                            HStack {
                               
                              Text("\(String(Float(data.spendEarn(earn: Float (earnMoney) ?? 0, spend: Float (spendMoney) ?? 0 ))))")
                                
                               
                                    .font(.system(size: 60, weight: .medium))
                                    .foregroundColor(Color("Color_font_1"))
                                
                                
                                Text("$")
                                    .font(.system(size: 60,weight: .medium))
                                    .foregroundColor(Color("Color_font_1"))
                                
                                Spacer()
                                
                                
                            }
                            ZStack {
                                VStack {
                                    
                                    HStack {
                                        Text("Вы можете потратить в день")
                                            .font(.system(size: 34, weight: .medium))
                                            .foregroundColor(Color("Color_font"))
                                           
                                        Spacer()
                                        
                                        
                                    }
                                }
                            }
                        }  .padding(.horizontal,15)
                    }
                }
            } .padding(15)
        }
        
                
                
                .toolbar(.hidden, for: .tabBar)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        if isInputActive {
                            Button("Done") {
                                isInputActive = false
                            }
                        } else {
                            Button("Done") {
                                isInputActive_1 = false
                            }
                        }
                    }
                }
                
            }
            
        }
    
    
    struct SafeMoney_Screen_Previews: PreviewProvider {
        static var previews: some View {
            SafeMoney_Screen()
            
        }
    }

