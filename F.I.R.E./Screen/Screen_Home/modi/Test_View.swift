//
//  Test_modi.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 07.06.2023.
//

import SwiftUI

struct Test_View: View {
    var totalQwestion : Int //всего вопросов
   
  
    var Text_info : [String] //основной текст
    var TrueQwestion : [Bool?] //правильные вопросы
    var isMedal : Bool // медаль ли это
    var titleTest : String //название текста
    
    @State private var index : Int = 0 //вопрос сейчас
    @State private var total : Int = 0 //тотал ответов
    @State private var TrueForModi : Bool? = nil
    @State private var HowQwest : Int = 1
    
    @Binding var testIsFinish : Int
    @Binding var testFinishHow : Int
    
    var body: some View {
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            if index >= totalQwestion {
                if isMedal {
                    VStack(spacing: 10){
                        Spacer()
                        switch total {
                        case 0...totalQwestion/3:
                            Image("medalki_nil")
                                .onAppear {
                                    
                                    testFinishHow = 1
                                    testIsFinish = 0
                                }
                        case totalQwestion/3...totalQwestion/2:
                            Image("medalki")
                                .onAppear {
                                    testFinishHow = 2
                                    testIsFinish = 1
                                }
                        case totalQwestion/2...totalQwestion:
                            Image("medalki_2")
                                .onAppear {
                                    testFinishHow = 3
                                   testIsFinish = 1
                                    
                                   
                                }
                        default :
                            Text("Erore")
                        }
                        Text("\(titleTest)")
                            .foregroundColor(Color("Color_font"))
                            .font(.system(size: 30,weight: .medium))
                        switch total {
                        case 0...totalQwestion/3:
                            Text("Вы не прошли\nтест")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 20,weight: .medium))
                                .opacity(0.5)
                        case totalQwestion/3...totalQwestion/2:
                            Text("вы получили медаль")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 20,weight: .medium))
                                .opacity(0.5)
                        case totalQwestion/2...totalQwestion:
                            Text("вы получили медаль")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 20,weight: .medium))
                                .opacity(0.5)
                        default :
                            Text("Erore")
                        }
                        Spacer()
                        Text("\(total)")
                            .foregroundColor(Color("Color_font_1"))
                            .font(.system(size: 30,weight: .medium))
                        +
                        Text(" правильных\nиз ")
                            .foregroundColor(Color("Color_font_1"))
                            .font(.system(size: 30,weight: .medium))
                            
                        +
                        Text("\(totalQwestion)")
                            .foregroundColor(Color("Color_font_1"))
                            .font(.system(size: 30,weight: .medium))
                        switch total {
                        case 0...totalQwestion/3:
                            Text("Это уже хороший результат! Но чтобы стать настоящим экспертом в этой области, вам нужно продолжать учиться.")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 20,weight: .medium))
                                .opacity(0.5)
                        case totalQwestion/3...totalQwestion/2:
                            Text("Это уже хороший результат! Но чтобы стать настоящим экспертом в этой области, вам нужно продолжать учиться.")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 20,weight: .medium))
                                .opacity(0.5)
                        case totalQwestion/2...totalQwestion:
                            Text("Это уже хороший результат! Но чтобы стать настоящим экспертом в этой области, вам нужно продолжать учиться.")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 20,weight: .medium))
                                .opacity(0.5)
                        default :
                            Text("Erore")
                        }
                    }.padding(.horizontal,25)
                        .padding(.bottom,5)
                        .multilineTextAlignment(.center)
                        
                } else {
                    VStack(spacing: 10){
                        Spacer()
                        switch total {
                        case 0...totalQwestion/3:
                            Image(systemName: "xmark.seal.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color("Color_font_1"))
                                .padding(.horizontal,5)
                        case totalQwestion/3...totalQwestion/2:
                            Image(systemName: "checkmark.seal.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color("Color_font_1"))
                                .padding(.horizontal,5)
                        case totalQwestion/2...totalQwestion:
                            Image(systemName: "checkmark.seal.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color("Color_font_1"))
                                .padding(.horizontal,5)
                        default :
                            Text("Erore")
                        }
                       
                       
                        Spacer()
                        Text("\(total)")
                            .foregroundColor(Color("Color_font_1"))
                            .font(.system(size: 35,weight: .medium))
                        +
                        Text(" правильных\nиз ")
                            .foregroundColor(Color("Color_font_1"))
                            .font(.system(size: 35,weight: .medium))
                            
                        +
                        Text("\(totalQwestion)")
                            .foregroundColor(Color("Color_font_1"))
                            .font(.system(size: 35,weight: .medium))
                        Spacer()
                        switch total {
                        case 0...totalQwestion/3:
                            Text("Это уже хороший результат! Но чтобы стать настоящим экспертом в этой области, вам нужно продолжать учиться.")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 20,weight: .medium))
                                .opacity(0.5)
                        case totalQwestion/3...totalQwestion/2:
                            Text("Это уже хороший результат! Но чтобы стать настоящим экспертом в этой области, вам нужно продолжать учиться.")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 20,weight: .medium))
                                .opacity(0.5)
                        case totalQwestion/2...totalQwestion:
                            Text("Это уже хороший результат! Но чтобы стать настоящим экспертом в этой области, вам нужно продолжать учиться.")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 20,weight: .medium))
                                .opacity(0.5)
                        default :
                            Text("Erore")
                        }
                    }.padding(.horizontal,25)
                        .padding(.bottom,5)
                        .multilineTextAlignment(.center)
                        
                }
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
                            RoundedRectangle(cornerRadius: 30)
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
                    .padding(.bottom,15)
            }
        }
    }
}

