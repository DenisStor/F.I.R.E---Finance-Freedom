//
//  Test_modi.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 07.06.2023.
//

import SwiftUI

struct Test_modi: View {
    var totalQwestion : Int //всего вопросов
   // вопрос сейчас
    var Title : [String] // заголовок
    var Text_info : [String] //основной текст
    var TrueQwestion : [Bool?] //правильные вопросы
    
    
    @State private var index : Int = 0
   // @State var F = TrueQwestion
    @State private var total : Int = 0
    @State private var TrueForModi : Bool? = nil
    @State private var HowQwest : Int = 1
    var body: some View {
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            if index >= totalQwestion {
                VStack(alignment: .leading){
                    HStack {
                        Text("\(total)")
                            .foregroundColor(Color("Color_font_1"))
                            .font(.system(size: 45,weight: .medium))
                        .multilineTextAlignment(.leading)
                        Text("prav8")
                            .foregroundColor(Color("Color_font_1"))
                            .font(.system(size: 45,weight: .medium))
                        Spacer()
                    }
                    switch total {
                    case 0...totalQwestion/3:
                        HStack {
                            Text("testbad")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 25,weight: .medium))
                            .multilineTextAlignment(.leading)
                            Spacer()
                        }
                    case totalQwestion/3...(totalQwestion/3)*2:
                        HStack {
                            Text("testcool")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 25,weight: .medium))
                            .multilineTextAlignment(.leading)
                            Spacer()
                        }
                    case (totalQwestion/3)*2...totalQwestion:
                        HStack {
                            Text("testbest")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 25,weight: .medium))
                            .multilineTextAlignment(.leading)
                            Spacer()
                        }
                    default:
                        Text("Erore")
                    }
                    Spacer()
                }.padding(.horizontal,15)
                    .padding(.top,20)
            }
            else {
                VStack(alignment: .leading,spacing:20){
                    bar_progress(progress: Float(index), total: Float(totalQwestion))
                        .frame(height: 15)
                        .padding(.top,20)
                    HStack {
                        Text("\(HowQwest)")
                            .foregroundColor(Color("Color_font_1"))
                            .font(.system(size: 45,weight: .medium))
                        .multilineTextAlignment(.leading)
                        Text("lessontrans")
                            .foregroundColor(Color("Color_font_1"))
                            .font(.system(size: 45,weight: .medium))
                    }
                  
                    Text("\(Text_info[index])")
                        .foregroundColor(Color("Color_font"))
                        .font(.system(size: 25,weight: .medium))
                        .multilineTextAlignment(.leading)
                    VStack(spacing:15){
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 40, height: 40)
                                .foregroundColor(TrueForModi == true ? Color("Color_font_1") : Color("Color_button"))
                            Text("yes")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 24,weight: .medium))
                            
                            Spacer()
                        }
                        .onTapGesture {
                            if TrueForModi == nil {
                                TrueForModi = true
                            } else {
                                if TrueForModi == true {
                                    TrueForModi = nil
                                } else {
                                    TrueForModi = true
                                }
                            }
                        }
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 40, height: 40)
                                .foregroundColor(TrueForModi == false ? Color("Color_font_1") : Color("Color_button"))
                            Text("no")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 24,weight: .medium))
                            Spacer()
                            
                        }
                        .onTapGesture {
                            if TrueForModi == nil {
                                TrueForModi = false
                            } else {
                                if TrueForModi == false {
                                    TrueForModi = nil
                                } else {
                                    TrueForModi = false
                                }
                            }
                        }
                    }
                    .padding(.top,15)
                    Spacer()
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .frame(height: 60)
                                .foregroundColor(Color("Color_font_1"))
                            if totalQwestion-1 == index
                            {
                                Text("Done")
                                    .foregroundColor(Color("Color_font_2"))
                                    .font(.system(size: 25,weight: .medium))
                            } else {
                                ZStack{
                                    Text("nextq")
                                        .foregroundColor(Color("Color_font_2"))
                                        .font(.system(size: 25,weight: .medium))
                                }
                            }
                        }.opacity(TrueForModi == nil ? 0.5 : 1)
                    }.onTapGesture {
                        if TrueForModi == nil {
                            
                        } else {
                            if TrueQwestion[index] == TrueForModi{
                            total += 1
                            }
                            else {
                            total += 0
                            }
                            index += 1
                            HowQwest += 1
                        }
                        TrueForModi = nil
                    }
                }.padding(.horizontal,15)
            }
        }
    }
}

struct Test_modi_Previews: PreviewProvider {
    static var previews: some View {
        Test_modi(totalQwestion: 3,Title: ["1","2","3"], Text_info: ["ds edthtys?", "levftnt?", "levftnt?"], TrueQwestion: [true, false,false])
    }
}
