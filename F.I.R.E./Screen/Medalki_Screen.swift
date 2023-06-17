//
//  Medalki_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 16.06.2023.
//

import SwiftUI

struct Medalki_Screen: View {
    
    @AppStorage ("test1")  var test1 : Int = 0
    @AppStorage ("test2")  var test2 : Int = 0
    
    
    @State private var testtext1 : [String] = [
        NSLocalizedString("word_0", comment: ""),
        NSLocalizedString("word_1", comment: ""),
        NSLocalizedString("word_2", comment: ""),
    ]
    @State private var testtruee : [Bool] = [ true, true, true , false ,false , true
    ]
    
    
    
    var body: some View {
        GeometryReader { g in
            let screen = g.size
            ZStack{
                Color("Color_back")
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack{
                        VStack(spacing:25){
                            switch test1 {
                            case 0:
                                Image("medalki_nil")
                            case 1:
                                Image("medalki_nil")
                            case 2:
                                Image("medalki")
                            case 3:
                                Image("medalki_2")
                            default:
                                Text("Erorre")
                            }
                            Text("Медаль\nза прохождение")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 20,weight: .medium))
                                .foregroundColor(Color("Color_font_3"))
                            Text("Какой ты инвестор?")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 25,weight: .medium))
                                .foregroundColor(Color("Color_font"))
                            NavigationLink {
                                Test_View(totalQwestion: 2, Text_info: testtext1, TrueQwestion: testtruee, IsFinish: $test1)
                                
                            } label: {
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 30)
                                        .foregroundColor(Color("Color_font_1"))
                                        .frame(width: screen.width * 0.8,height: screen.width*0.15, alignment: .center)
                                    if test1 >= 1 {
                                        Text("Перепройти тест")
                                            .multilineTextAlignment(.center)
                                            .font(.system(size: 20,weight: .medium))
                                            .foregroundColor(Color("Color_font_2"))
                                    } else {
                                        Text("Пройти тест")
                                            .multilineTextAlignment(.center)
                                            .font(.system(size: 20,weight: .medium))
                                            .foregroundColor(Color("Color_font_2"))
                                    }
                                    
                                }
                            }.padding(.bottom,15)
                            Divider()
                                
                        } //test nomer z1
                       
                        
                        
                    }.padding(.horizontal,15)
                        .padding(.top,15)
                    VStack{
                        VStack(spacing:25){
                            switch test2 {
                            case 0:
                                Image("medalki_nil")
                            case 1:
                                Image("medalki")
                            case 2:
                                Image("medalki_2")
                            default:
                                Text("Erorre")
                            }
                            Text("Медаль\nза прохождение")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 20,weight: .medium))
                                .foregroundColor(Color("Color_font_3"))
                            Text("Какой ты инвестор?")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 25,weight: .medium))
                                .foregroundColor(Color("Color_font"))
                            NavigationLink {
                                Test_View(totalQwestion: 6, Text_info: testtext1, TrueQwestion: testtruee, IsFinish: $test1)
                                
                            } label: {
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 30)
                                        .foregroundColor(Color("Color_font_1"))
                                        .frame(width: screen.width * 0.8,height: screen.width*0.15, alignment: .center)
                                    Text("Пройти тест")
                                        .multilineTextAlignment(.center)
                                        .font(.system(size: 20,weight: .medium))
                                        .foregroundColor(Color("Color_font_2"))
                                    
                                }
                            }.padding(.bottom,15)
                            Divider()
                                
                        } //test nomer z1
                       
                        
                        
                    }.padding(.horizontal,15)
                        .padding(.top,15)
                }
            }
        }
    }
}

struct Medalki_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Medalki_Screen()
    }
}
