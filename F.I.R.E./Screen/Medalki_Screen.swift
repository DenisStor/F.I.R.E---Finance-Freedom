//
//  Medalki_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 16.06.2023.
//

import SwiftUI

struct Medalki_Screen: View {
    
    @AppStorage ("test1")  var test1 : Int = 0
    @AppStorage ("test_1")  var test_1 : Int = 0
    @AppStorage ("test2")  var test2 : Int = 0
    @AppStorage ("test_2")  var test_2 : Int = 0
    @AppStorage ("test3")  var test3 : Int = 0
    @AppStorage ("test_3")  var test_3 : Int = 0
    
    @State private var testtext1 : [String] = [
        NSLocalizedString("SmartQues1.1", comment: ""),
        NSLocalizedString("SmartQues1.2", comment: ""),
        NSLocalizedString("SmartQues1.3", comment: ""),
        NSLocalizedString("SmartQues1.4", comment: ""),
        NSLocalizedString("SmartQues1.5", comment: ""),
        NSLocalizedString("SmartQues1.6", comment: ""),
        NSLocalizedString("SmartQues1.7", comment: ""),
        NSLocalizedString("SmartQues1.8", comment: ""),
    ]
    @State private var testtruee : [Bool] = [ false, false, false , true ,true , false, true, true
    ]
    
    
    @State private var testtext2 : [String] = [
        NSLocalizedString("SpendWisely1.1", comment: ""),
        NSLocalizedString("SpendWisely1.2", comment: ""),
        NSLocalizedString("SpendWisely1.3", comment: ""),
        NSLocalizedString("SpendWisely1.4", comment: ""),
        NSLocalizedString("SpendWisely1.5", comment: ""),
        NSLocalizedString("SpendWisely1.6", comment: ""),
        NSLocalizedString("SpendWisely1.7", comment: ""),
        NSLocalizedString("SpendWisely1.8", comment: ""),
    ]
    @State private var testtrue2 : [Bool] = [ false, false, true , true ,true , true, true, true
    ]
    
    
    @State private var testtext3 : [String] = [
        NSLocalizedString("AbilityMoney1.1", comment: ""),
        NSLocalizedString("AbilityMoney1.2", comment: ""),
        NSLocalizedString("AbilityMoney1.3", comment: ""),
        NSLocalizedString("AbilityMoney1.4", comment: ""),
        NSLocalizedString("AbilityMoney1.5", comment: ""),
        NSLocalizedString("AbilityMoney1.6", comment: ""),
        NSLocalizedString("AbilityMoney1.7", comment: ""),
        NSLocalizedString("AbilityMoney1.8", comment: ""),
    ]
    @State private var testtrue3 : [Bool] = [ true, true, true , false ,true , true, true, true
    ]
    
    
    
    var body: some View {
        
            ZStack{
                Color("Color_back")
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack{
                        VStack(spacing:25){
                            switch test_1 {
                            case 0:
                                Image("medalki_nil")
                            case 1:
                                Image("medalki_nil")
                            case 2:
                                Image("Medalki")
                            case 3:
                                Image("medalki_2")
                            default:
                                Text("Erorre")
                            }
                            Text("asdqq")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 20,weight: .medium))
                                .foregroundColor(Color("Color_font_3"))
                            Text("SmartQues1")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 25,weight: .medium))
                                .foregroundColor(Color("Color_font"))
                            NavigationLink {
                                Test_View(totalQwestion: 8, Text_info: testtext1, TrueQwestion: testtruee, isMedal: true, titleTest: NSLocalizedString("SmartQues1",comment: ""), testIsFinish: $test1, testFinishHow: $test_1)
                                
                            } label: {
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 30)
                                        .padding(.vertical,-15)
                                        .foregroundColor(Color("Color_font_1"))
                                        .padding(.horizontal,30)
                                    if test_1 >= 1 {
                                        Text("qwdqwgtty")
                                            .multilineTextAlignment(.center)
                                            .font(.system(size: 20,weight: .medium))
                                            .foregroundColor(Color("Color_font_2"))
                                    } else {
                                        Text("Jowvv")
                                            .multilineTextAlignment(.center)
                                            .font(.system(size: 20,weight: .medium))
                                            .foregroundColor(Color("Color_font_2"))
                                    }
                                    
                                }
                            }.padding(.bottom,15)
                            Divider()
                                
                        } //test nomer z1
                        VStack(spacing:25){
                            switch test_2 {
                            case 0:
                                Image("medalki_nil")
                            case 1:
                                Image("medalki_nil")
                            case 2:
                                Image("Medalki")
                            case 3:
                                Image("medalki_2")
                            default:
                                Text("Erorre")
                            }
                            Text("asdqq")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 20,weight: .medium))
                                .foregroundColor(Color("Color_font_3"))
                            Text("SpendWisely1")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 25,weight: .medium))
                                .foregroundColor(Color("Color_font"))
                            NavigationLink {
                                Test_View(totalQwestion: 8, Text_info: testtext2, TrueQwestion: testtrue2, isMedal: true, titleTest: NSLocalizedString("SpendWisely1",comment: ""), testIsFinish: $test2, testFinishHow: $test_2)
                                
                            } label: {
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 30)
                                        .padding(.vertical,-15)
                                        .foregroundColor(Color("Color_font_1"))
                                        .padding(.horizontal,30)
                                    if test_2 >= 1 {
                                        Text("qwdqwgtty")
                                            .multilineTextAlignment(.center)
                                            .font(.system(size: 20,weight: .medium))
                                            .foregroundColor(Color("Color_font_2"))
                                    } else {
                                        Text("Jowvv")
                                            .multilineTextAlignment(.center)
                                            .font(.system(size: 20,weight: .medium))
                                            .foregroundColor(Color("Color_font_2"))
                                    }
                                    
                                }
                            }.padding(.bottom,15)
                            Divider()
                                
                        } //test nomer z2
                        VStack(spacing:25){
                            switch test_3 {
                            case 0:
                                Image("medalki_nil")
                            case 1:
                                Image("medalki_nil")
                            case 2:
                                Image("Medalki")
                            case 3:
                                Image("medalki_2")
                            default:
                                Text("Erorre")
                            }
                            Text("asdqq")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 20,weight: .medium))
                                .foregroundColor(Color("Color_font_3"))
                            Text("AbilityMoney1")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 25,weight: .medium))
                                .foregroundColor(Color("Color_font"))
                            NavigationLink {
                                Test_View(totalQwestion: 8, Text_info: testtext3, TrueQwestion: testtrue3, isMedal: true, titleTest: NSLocalizedString("AbilityMoney1",comment: ""), testIsFinish: $test3, testFinishHow: $test_3)
                                
                            } label: {
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 30)
                                        .padding(.vertical,-15)
                                        .foregroundColor(Color("Color_font_1"))
                                        .padding(.horizontal,30)
                                    if test_3 >= 1 {
                                        Text("qwdqwgtty")
                                            .multilineTextAlignment(.center)
                                            .font(.system(size: 20,weight: .medium))
                                            .foregroundColor(Color("Color_font_2"))
                                    } else {
                                        Text("Jowvv")
                                            .multilineTextAlignment(.center)
                                            .font(.system(size: 20,weight: .medium))
                                            .foregroundColor(Color("Color_font_2"))
                                    }
                                    
                                }
                            }.padding(.bottom,15)
                            Divider()
                                
                        } //test nomer z2
                        
                    }.padding(.horizontal,15)
                        .padding(.top,15)
                    
                }
            
        }
    }
}

struct Medalki_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Medalki_Screen()
    }
}
