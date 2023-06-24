//
//  Test_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 27.05.2023.
//

import SwiftUI

struct testStruct {
    let mainText: String
    let qwe1: Int
    let qwe2: Int
    let qwe3: Int
    let qwe1Str: String
    let qwe2Str: String
    let qwe3Str: String
}

struct Test_Screen: View {
    
let textTest = [
  testStruct(
         mainText: "Какая из целей инвестирования вам ближе?",
         qwe1: 0,
         qwe2: 0,
         qwe3: 0,
         qwe1Str: "Сохранить деньги от инфляции",
         qwe2Str: "Обогнать инфляцию",
         qwe3Str: "Максимально заработать"
  ),

    
    
     
]
    
    @State private var index : Int = 0
    @State private var drag : Int? = nil
    @State private var points = [Int]()
    
    var body: some View {
        ZStack{
            Color("Color_back")
            if textTest.count == index {
                ScrollView (showsIndicators: false) {
                    VStack{
                        ForEach(points,id:\.self) { i in
                            Text("\(points[i])")
                        }
                    }.padding(.horizontal,15)
                }
            } else {
                VStack(spacing:15){
                    bar_progress(progress: Float(index), total: Float(textTest.count))
                        .frame(height: 15)
                        .padding(.bottom,10)
                    HStack{
                        Text("\(textTest[index].mainText)")
                            .font(.system(size: 30,weight: .medium))
                            .foregroundColor(Color("Color_font"))
                            .multilineTextAlignment(.leading)
                        Spacer()
                    } .padding(.bottom,20)
                    VStack(spacing:15){
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 40, height: 40)
                                .foregroundColor(drag == textTest[index].qwe1 ? Color("Color_font_1") : Color("Color_button"))
                            Text("\(textTest[index].qwe1Str)")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        .onTapGesture {
                            if  drag == textTest[index].qwe1 {
                                drag = nil
                            } else {
                                drag = Int(textTest[index].qwe1)
                            }
                            let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                            impactHeavy.impactOccurred()
                            print("1")
                        }
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 40, height: 40)
                                .foregroundColor(drag == textTest[index].qwe2 ? Color("Color_font_1") : Color("Color_button"))
                            Text("\(textTest[index].qwe2Str)")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        .onTapGesture {
                            if  drag == textTest[index].qwe2 {
                                drag = nil
                            } else {
                                drag = textTest[index].qwe2
                            }
                            let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                            impactHeavy.impactOccurred()
                            print("2")
                        }
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 40, height: 40)
                                .foregroundColor(drag == textTest[index].qwe3 ? Color("Color_font_1") : Color("Color_button"))
                            Text("\(textTest[index].qwe3Str)")
                                .foregroundColor(Color("Color_font"))
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        .onTapGesture {
                            if  drag == textTest[index].qwe3 {
                                drag = nil
                            } else {
                                drag = textTest[index].qwe3
                            }
                            let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                            impactHeavy.impactOccurred()
                            print("3")
                        }
                    }
                    Spacer()
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(Color("Color_font_1"))
                            if textTest.count - 1 == index  {
                                Text("Закончить")
                                    .font(.system(size: 25,weight: .medium))
                                    .foregroundColor(Color("Color_font_2"))
                                    .multilineTextAlignment(.center)
                            } else {
                                Text("Дальше")
                                    .font(.system(size: 25,weight: .medium))
                                    .foregroundColor(Color("Color_font_2"))
                                    .multilineTextAlignment(.center)
                            }
                        }
                        
                    }.padding(.bottom,5)
                        .frame(height: 60)
                        .opacity(drag != nil ? 1 : 0.5)
                        .onTapGesture {
                            if drag != nil {
                                let impactHeavy = UIImpactFeedbackGenerator(style: .rigid)
                                impactHeavy.impactOccurred()
                                print(drag!)
                                points.insert(drag!, at: index)
                                drag = nil
                                index += 1
                            } else {
                                print("NIL")
                            }
                        }
                    
                    
                }.padding(.horizontal,15)
            }
        }
           
    }
   
}

struct Test_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Test_Screen()
    }
}
