//
//  Test_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 27.05.2023.
//

import SwiftUI

struct Test_Screen: View {
    
    @State private var lesson : [String] =  [ NSLocalizedString("1q", comment: ""),
        NSLocalizedString("2q", comment: ""),
        NSLocalizedString("3q", comment: ""),
        NSLocalizedString("4q", comment: ""),
         NSLocalizedString("5q", comment: ""),
       NSLocalizedString("6q", comment: ""),
          NSLocalizedString("7q", comment: ""),
          NSLocalizedString("8q", comment: "")]
    
    @State private var IsCount : Int = 0
    
    @State private var TextInf : [String] = [
        NSLocalizedString("1a", comment: ""),
        NSLocalizedString("2a", comment: ""),
        NSLocalizedString("3a", comment: ""),
        NSLocalizedString("4a", comment: ""),
        NSLocalizedString("5a", comment: ""),
        NSLocalizedString("6a", comment: ""),
        NSLocalizedString("7a", comment: ""),
        NSLocalizedString("8a", comment: "")]
   @State private var BoolCount : [Bool?] = [nil,nil,nil,nil,nil,nil,nil,nil] // не трогаем
   @State private var Ideal : [Bool] = [false,false,false,false,false,false,false,false] //правильные ответы
   @State private var tru : [Bool] = [false,false,false,false,false,false,false,false] //не трогать
    @State private var trueee = Calculator()
    //@AppStorage ("howMuch") var howmuch = trueee.counttrue(BoolCount: BoolCount ?? [nil,nil,nil,nil,nil,nil,nil,nil], ideal: Ideal ?? [false,false,false,false,false,false,false,false] )
    var body: some View {
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            
            if IsCount > 7 {
                VStack(alignment:.leading){
                    VStack (spacing: 10){
                        HStack {
                            HStack {
                              
                                VStack {
                                    HStack {
                                        Text("\(trueee.counttrue(BoolCount: BoolCount, ideal: Ideal))")
                                            .font(.system(size: 50, weight: .medium))
                                        Spacer()
                                    }
                                    HStack {
                                        Text("prav8")
                                            .font(.system(size: 45, weight: .medium))
                                        Spacer()
                                    }
                                }
                                
                                  Spacer()
                                
                            }.multilineTextAlignment(.leading)
                               .foregroundColor(Color("Color_font_1"))
                            //    .padding(.bottom,10)
                          //  Spacer()
                        }
                        
                        
                       
                        
                        HStack {
                            switch trueee.counttrue(BoolCount: BoolCount, ideal: Ideal) {
                            case 0..<4:
                                Text("finaltest1")
                            case 4..<6:
                                Text("finaltest2")
                            case 6..<8:
                                Text("finaltest3")
                            default:
                                Text("error")
                            }
                            
                            Spacer()
                        }.font(.system(size: 30, weight: .medium))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color("Color_font"))
                            
                        
                        Spacer()   }
                    
                }.padding(.horizontal,15)
            } else {
                VStack(alignment: .leading,spacing: 20){
                    
                    HStack {
                        Text("\(lesson[IsCount])")
                            .foregroundColor(Color("Color_font_1"))
                            .font(.system(size: 45,weight: .medium))
                            .multilineTextAlignment(.leading)
                       
                        
                        Spacer()
                    }
                    VStack{
                        HStack {
                            Text("\(TextInf[IsCount])")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 25,weight: .medium))
                                .multilineTextAlignment(.leading)
                            
                            Spacer()
                        }
                        
                    }
                    VStack(spacing: 20){
                        HStack{
                            
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 40, height: 40)
                                .foregroundColor(BoolCount[IsCount] == true ? Color("Color_font_1") : Color("Color_button"))
                            Text("yes")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 24,weight: .medium))
                            
                            Spacer()
                        }.onTapGesture {
                            if BoolCount[IsCount] == true {
                                BoolCount[IsCount] = nil
                                tru[IsCount] = false
                                let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                                impactHeavy.impactOccurred()
                            } else {
                                if BoolCount[IsCount] == nil {
                                    BoolCount[IsCount] = true
                                    let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                                    impactHeavy.impactOccurred()
                                }else {
                                    let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                                    impactHeavy.impactOccurred()
                                    BoolCount[IsCount] = true
                                }
                                
                                tru[IsCount] = true
                            }
                            
                        }
                        HStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 40, height: 40)
                                .foregroundColor(BoolCount[IsCount] == false ? Color("Color_font_1") : Color("Color_button"))
                            Text("no")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 24,weight: .medium))
                            Spacer()
                        }.onTapGesture {
                            if BoolCount[IsCount] == false {
                                BoolCount[IsCount] = nil
                                tru[IsCount] = false
                                let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                                impactHeavy.impactOccurred()
                            } else {
                                if BoolCount[IsCount] == nil {
                                    BoolCount[IsCount] = false
                                    let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                                    impactHeavy.impactOccurred()
                                }else {
                                    let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                                    impactHeavy.impactOccurred()
                                    BoolCount[IsCount] = false
                                }
                                
                                tru[IsCount] = true
                            }
                        }
                        
                    } .padding(.vertical,20)
                    Spacer()
                  
                    VStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(height: 60)
                                .foregroundColor(Color("Color_font_1"))
                            if IsCount == 7{
                                Text("Done")
                                    .foregroundColor(Color("Color_font_2"))
                                    .font(.system(size: 25,weight: .medium))
                            } else {
                                Text("nextq")
                                    .foregroundColor(Color("Color_font_2"))
                                    .font(.system(size: 25,weight: .medium))
                            }
                        }.opacity(tru[IsCount] == true ? 1 : 0.5)
                        .onTapGesture {
                            if tru[IsCount] {
                                IsCount += 1
                                let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                                impactHeavy.impactOccurred()
                                if IsCount < 3 {
                                    
                                }
                            } else {
                                
                            }
                    }
                        
                    } // нижняя кнопка
                    .padding(.vertical,15)
                }.padding(.horizontal,15)
                    .padding(.top,20)
            }
        }.toolbar(.hidden, for: .tabBar)
    }
   
}

struct Test_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Test_Screen()
    }
}
