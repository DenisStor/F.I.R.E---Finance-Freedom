//
//  SafeMoney_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 21.05.2023.
//

import SwiftUI

struct SafeMoney_Screen: View {
    
    @StateObject var data = SpendMoney()
    
    @AppStorage ("earnMoney") var earnMoney : String = ""
    @AppStorage ("spendMoney") var spendMoney : String = ""
    let characterLimit = 9
    
    
    @FocusState var isInputActive: Bool
    @FocusState var isInputActive_1: Bool
    
    var body: some View {
        
       
        
        
        ZStack {
            VStack{
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 30.71)
                        .foregroundColor(Color("Color_font_1"))
                        .frame(height: 179)
                    VStack {
                        HStack {
                            
                            Text("Сколько вы зарабатываете")
                                .font(.system(size: 33, weight: .medium)).foregroundColor(Color("Color_font_2"))
                                .padding(.horizontal,15)
                            
                            Spacer()
                            
                        }
                        HStack {
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
                                
                                    .font(.system(size: 33))
                                    .padding(.horizontal,15)
                                    .foregroundColor(Color("Color_black"))
                                    .background{
                                        RoundedRectangle(cornerRadius: 15)
                                            .foregroundColor(Color("Color_font_2"))
                                           
                                }
                                    .keyboardType(.numberPad)
                                    .focused($isInputActive)
                                                    
                                
                                
                                
                                Text("$")
                                    .font(.system(size: 33,weight: .medium))
                                    .foregroundColor(Color("Color_font_2"))
                                
                                Spacer()
                                
                                
                                
                            }
                            .padding(.horizontal,15)
                            
                        }
                    }
                    
                }
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 30.71)
                        .foregroundColor(Color("Color_button"))
                        .frame(height: 179)
                    VStack {
                        HStack {
                            
                            Text("Обязательные траты в месяц ")
                                .font(.system(size: 33, weight: .medium)).foregroundColor(Color("Color_font"))
                                .padding(.horizontal,15)
                            
                            Spacer()
                            
                        }
                        HStack {
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
                                
                                    .font(.system(size: 33))
                                    .padding(.horizontal,15)
                                    .foregroundColor(Color("Color_black"))
                                    .background{
                                        RoundedRectangle(cornerRadius: 15)
                                            .foregroundColor(Color("Color_font_2"))
                                           
                                }
                                    .keyboardType(.numberPad)
                                    .focused($isInputActive_1)
                                                    
                                
                                    
                                Text("$")
                                    .font(.system(size: 33,weight: .medium))
                                    .foregroundColor(Color("Color_font"))
                                
                                Spacer()
                                
                                
                                
                            }
                            
                            
                            
                            .padding(.horizontal,15)
                            
                        }
                    }
                    
                }
                Spacer()
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
                        
                        
                    }
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
                    
                }.padding(20)
            }
        }
        struct SafeMoney_Screen_Previews: PreviewProvider {
            static var previews: some View {
                SafeMoney_Screen()
            }
        }
        
    }
