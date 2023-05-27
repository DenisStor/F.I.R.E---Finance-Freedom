//
//  Test_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 27.05.2023.
//

import SwiftUI

struct Test_Screen: View {
    
    @State private var lesson : [String] = ["1 урок","2 урок","3 урок","4 урок"]
    @State private var IsCount : Int = 0
    @State private var TextInf : [String] = ["Может ли инвестор по структурной облигации при ее погашении получить выплату меньше ее номинальной стоимости?","Может ли инвестор по структурной облигации при ее погашении получить выплату меньше ее номинальной стоимости?","Может ли инвестор по структурной облигации при ее погашении получить выплату меньше ее номинальной стоимости?","Может ли инвестор по структурной облигации при ее погашении получить выплату меньше ее номинальной стоимости?"]
   @State private var BoolCount : [Bool?] = [nil,nil,nil,nil] // не трогаем
   @State private var Ideal : [Bool] = [true,false,false,true] //правильные ответы
   @State private var tru : [Bool] = [false,false,false,false] //не трогать
    var body: some View {
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            if IsCount > 3 {
                VStack{
                    Text("Finish")
                    ForEach (0..<4) { index in
                        if Ideal[index] == BoolCount[index]{
                            Text("True")
                        } else {
                            Text("False")
                        }
                        
                    }
                   
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
                        .padding(.vertical,30)
                        Spacer()
                    }
                    VStack(spacing: 40){
                        HStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 30, height: 30)
                                .foregroundColor(BoolCount[IsCount] == true ? .red : .black)
                            Text("Yes")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 30,weight: .medium))
                            Spacer()
                        }.onTapGesture {
                            if BoolCount[IsCount] == nil {
                                BoolCount[IsCount] = true
                            }else {
                                BoolCount[IsCount] = true
                            }
                            tru[IsCount] = true
                        }
                        HStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 30, height: 30)
                                .foregroundColor(BoolCount[IsCount] == false ? .red : .black)
                            Text("No")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 30,weight: .medium))
                            Spacer()
                        }.onTapGesture {
                            if BoolCount[IsCount] == nil {
                                BoolCount[IsCount] = false
                            }else {
                                BoolCount[IsCount] = false
                            }
                            tru[IsCount] = true
                        }
                    }
                    Spacer()
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(height: 60)
                            .foregroundColor(Color("Color_font_1"))
                        if IsCount == 3{
                            Text("All")
                                .foregroundColor(Color("Color_font_2"))
                                .font(.system(size: 25,weight: .medium))
                        } else {
                            Text("Next")
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
            }
        }
    }
}

struct Test_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Test_Screen()
    }
}
