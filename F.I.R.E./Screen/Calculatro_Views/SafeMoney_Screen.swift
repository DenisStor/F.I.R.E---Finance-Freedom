//
//  SafeMoney_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 21.05.2023.
//

import SwiftUI

struct SafeMoney_Screen: View {
    
    @StateObject var data = SpendMoney()
    
    var body: some View {
        
        @AppStorage ("earnMoney") var earnMoney : Double = 10
        @AppStorage ("spendMoney") var spendMoney : Double = 10
        
        
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
                                
                                TextField("в месяц",value: $earnMoney, format: .number)
                                    .font(.system(size: 33))
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
                            
                            Text("Обязательные трат в месяц ")
                                .font(.system(size: 33, weight: .medium)).foregroundColor(Color("Color_font"))
                                .padding(.horizontal,15)
                            
                            Spacer()
                            
                        }
                        HStack {
                            HStack {
                                
                                TextField("в месяц",value: $spendMoney, format: .number)
                                    .font(.system(size: 33))
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
                            
                            
                            
                            .padding(.horizontal,15)
                            
                        }
                    }
                    
                }
                Spacer()
                ZStack {
                    
                    VStack {
                        HStack {
                            Text("1 321₽").font(.system(size: 117.2, weight: .medium)).foregroundColor(Color("Color_font_1"))
                            Spacer()
                        }
                        
                        
                    }
                }
                
                ZStack {
                    VStack {
                        HStack {
                            Text("Вы можете потратить в день").font(.system(size: 44.9, weight: .medium))
                            Spacer()
                        }
                    }
                }
                    
                }.padding(10)
            }
        }
        struct SafeMoney_Screen_Previews: PreviewProvider {
            static var previews: some View {
                SafeMoney_Screen()
            }
        }
        
    }
