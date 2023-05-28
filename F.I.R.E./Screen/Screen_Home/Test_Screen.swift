//
//  Test_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 27.05.2023.
//

import SwiftUI

struct Test_Screen: View {
    
    @State private var lesson : [String] =  [ NSLocalizedString("5 вопрос", comment: ""),
        NSLocalizedString("lesson_2", comment: ""),
        NSLocalizedString("lesson_3", comment: ""),
        NSLocalizedString("lesson_4", comment: "")]
    
    @State private var IsCount : Int = 0
    
    @State private var TextInf : [String] = [
        NSLocalizedString("Может ли инвестор по структурной облигации при ее погашении получить выплату меньше ее номинальной стоимости?", comment: ""),
        NSLocalizedString("question_2", comment: ""),
        NSLocalizedString("question_3", comment: ""),
        NSLocalizedString("question_4", comment: "")]
   @State private var BoolCount : [Bool?] = [nil,nil,nil,nil] // не трогаем
   @State private var Ideal : [Bool] = [true,false,false,true] //правильные ответы
   @State private var tru : [Bool] = [false,false,false,false] //не трогать
    @State private var trueee = Calculator()
    
    var body: some View {
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            
            if IsCount > 3 {
                VStack(alignment:.leading){
                    VStack {
                        HStack {
                            Text("Тест\nпройден").font(.system(size: 54.9, weight: .medium)).foregroundColor(Color(#colorLiteral(red: 0.93, green: 0.25, blue: 0.25, alpha: 1)))
                            Spacer()
                            }
                      
                        Text("\(trueee.counttrue(BoolCount: BoolCount, ideal: Ideal))")
                      
                   Spacer()
                        
                    }
                    .padding(15)
                }
            } else {
                VStack(alignment: .leading){
                    
                    HStack {
                        Text("\(lesson[IsCount])")
                            .foregroundColor(Color("Color_font_1"))
                            .font(.system(size: 55,weight: .medium))
                            .multilineTextAlignment(.leading)
                        .padding(.vertical,10)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text("\(TextInf[IsCount])")
                            .foregroundColor(Color("Color_font"))
                            .font(.system(size: 30,weight: .medium))
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                    }
                    VStack(spacing: 20){
                        HStack{
                            
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 40, height: 40)
                                .foregroundColor(BoolCount[IsCount] == true ? Color("Color_font_1") : Color("Color_button"))
                            Text("Да")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 24,weight: .medium))
                            
                            Spacer()
                        }.onTapGesture {
                            if BoolCount[IsCount] == true {
                                BoolCount[IsCount] = nil
                                tru[IsCount] = false
                            } else {
                                if BoolCount[IsCount] == nil {
                                    BoolCount[IsCount] = true
                                }else {
                                    BoolCount[IsCount] = true
                                }
                                
                                tru[IsCount] = true
                            }
                            
                        }
                        HStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 40, height: 40)
                                .foregroundColor(BoolCount[IsCount] == false ? Color("Color_font_1") : Color("Color_button"))
                            Text("Нет")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 24,weight: .medium))
                            Spacer()
                        }.onTapGesture {
                            if BoolCount[IsCount] == false {
                                BoolCount[IsCount] = nil
                                tru[IsCount] = false
                            } else {
                                if BoolCount[IsCount] == nil {
                                    BoolCount[IsCount] = false
                                }else {
                                    BoolCount[IsCount] = false
                                }
                                
                                tru[IsCount] = true
                            }
                        }
                    } .padding(.vertical,20)
                    Spacer()
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(height: 60)
                            .foregroundColor(Color("Color_font_1"))
                        if IsCount == 3{
                            Text("Done")
                                .foregroundColor(Color("Color_font_2"))
                                .font(.system(size: 25,weight: .medium))
                        } else {
                            Text("Дальше")
                                .foregroundColor(Color("Color_font_2"))
                                .font(.system(size: 25,weight: .medium))
                        }
                    }.opacity(tru[IsCount] == true ? 1 : 0.5)
                    .onTapGesture {
                        if tru[IsCount] {
                            IsCount += 1
                            if IsCount < 3 {
                                
                            }
                        } else {
                            
                        }
                    } // нижняя кнопка
                    
                }.padding(.horizontal,10)
                    .padding(5)
                    .padding(.vertical,30)
            }
        }
    }
   
}

struct Test_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Test_Screen()
    }
}
