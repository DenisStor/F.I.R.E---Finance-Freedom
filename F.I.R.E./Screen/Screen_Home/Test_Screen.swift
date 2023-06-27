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
         mainText: NSLocalizedString("IndividQues1", comment: ""),
         qwe1: 2,
         qwe2: 1,
         qwe3: 0,
         qwe1Str: NSLocalizedString("IndividQues1.1", comment: ""),
         qwe2Str: NSLocalizedString("IndividQues1.2", comment: ""),
         qwe3Str: NSLocalizedString("IndividQues1.3", comment: "")
  ),
  testStruct(
         mainText: NSLocalizedString("IndividQues2", comment: ""),
         qwe1: 0,
         qwe2: 1,
         qwe3: 2,
         qwe1Str: NSLocalizedString("IndividQues2.1", comment: ""),
         qwe2Str: NSLocalizedString("IndividQues2.2", comment: ""),
         qwe3Str: NSLocalizedString("IndividQues2.3", comment: "")
  ),
  testStruct(
         mainText: NSLocalizedString("IndividQues3", comment: ""),
         qwe1: 0,
         qwe2: 1,
         qwe3: 2,
         qwe1Str: NSLocalizedString("IndividQues3.1", comment: ""),
         qwe2Str: NSLocalizedString("IndividQues3.2", comment: ""),
         qwe3Str: NSLocalizedString("IndividQues3.3", comment: "")
  ),
  testStruct(
         mainText: NSLocalizedString("IndividQues4", comment: ""),
         qwe1: 0,
         qwe2: 1,
         qwe3: 2,
         qwe1Str: NSLocalizedString("IndividQues4.1", comment: ""),
         qwe2Str: NSLocalizedString("IndividQues4.2", comment: ""),
         qwe3Str: NSLocalizedString("IndividQues4.3", comment: "")
  ),
  testStruct(
         mainText: NSLocalizedString("IndividQues5", comment: ""),
         qwe1: 0,
         qwe2: 1,
         qwe3: 2,
         qwe1Str: NSLocalizedString("IndividQues5.1", comment: ""),
         qwe2Str: NSLocalizedString("IndividQues5.2", comment: ""),
         qwe3Str: NSLocalizedString("IndividQues5.3", comment: "")
  ),
  testStruct(
         mainText: NSLocalizedString("IndividQues6", comment: ""),
         qwe1: 0,
         qwe2: 1,
         qwe3: 2,
         qwe1Str: NSLocalizedString("IndividQues6.1", comment: ""),
         qwe2Str: NSLocalizedString("IndividQues6.2", comment: ""),
         qwe3Str: NSLocalizedString("IndividQues6.3", comment: "")
  ),
  testStruct(
         mainText: NSLocalizedString("IndividQues7", comment: ""),
         qwe1: 2,
         qwe2: 1,
         qwe3: 0,
         qwe1Str: NSLocalizedString("yes", comment: ""),
         qwe2Str: NSLocalizedString("IndividQues7.1", comment: ""),
         qwe3Str: NSLocalizedString("no", comment: "")
  ),
  testStruct(
         mainText: NSLocalizedString("IndividQues8", comment: ""),
         qwe1: 2,
         qwe2: 1,
         qwe3: 0,
         qwe1Str: NSLocalizedString("IndividQues8.1", comment: ""),
         qwe2Str: NSLocalizedString("IndividQues8.2", comment: ""),
         qwe3Str: NSLocalizedString("IndividQues8.3", comment: "")
  ),
  testStruct(
         mainText: NSLocalizedString("IndividQues9", comment: ""),
         qwe1: 0,
         qwe2: 1,
         qwe3: 2,
         qwe1Str: NSLocalizedString("IndividQues9.1", comment: ""),
         qwe2Str: NSLocalizedString("IndividQues9.2", comment: ""),
         qwe3Str: NSLocalizedString("IndividQues9.3", comment: "")
  ),
  
]
    
    @State private var index : Int = 0
    @State private var drag : Int? = nil
    @State private var points = [Int]()
    @State private var finishForFirst = 0
    @State private var finishForTwo = 0
    @State private var finishForThree = 0
    var body: some View {
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            if textTest.count == index {
                ScrollView (showsIndicators: false) {
                    VStack{
                        VStack(spacing:10){
                            HStack {
                                Text("qwe0tybginm")
                                    .font(.system(size: 30,weight: .medium))
                                    .foregroundColor(Color("Color_font"))
                                    .multilineTextAlignment(.leading)
                                Spacer()
                            }
                            HStack { // 1 2 5 6 7 8
                                switch finishForFirst{
                                case 9...12:
                                    Text("reqhqerh")
                                        .font(.system(size: 40,weight: .semibold))
                                        .foregroundColor(Color("Color_font_1"))
                                        .multilineTextAlignment(.leading)
                                case 5...9:
                                    Text("qoierhp")
                                        .font(.system(size: 40,weight: .semibold))
                                        .foregroundColor(Color("Color_font_1"))
                                        .multilineTextAlignment(.leading)
                                case 0...5:
                                    Text("oiwhngewn")
                                        .font(.system(size: 40,weight: .semibold))
                                        .foregroundColor(Color("Color_font_1"))
                                        .multilineTextAlignment(.leading)
                                default:
                                    Text("Erore")
                                }
                              
                                Spacer()
                            }
                        }
                        Divider()
                        VStack(spacing:10){
                            HStack {
                                switch finishForFirst{
                                case 9...12:
                                    Text("wpieghbwne")
                                        .font(.system(size: 25,weight: .medium))
                                        .foregroundColor(Color("Color_font"))
                                        .multilineTextAlignment(.leading)
                                case 5...9:
                                    Text("erhjbto")
                                        .font(.system(size: 25,weight: .medium))
                                        .foregroundColor(Color("Color_font"))
                                        .multilineTextAlignment(.leading)
                                case 0...5:
                                    Text("we09ghnm")
                                        .font(.system(size: 25,weight: .medium))
                                        .foregroundColor(Color("Color_font"))
                                        .multilineTextAlignment(.leading)
                                default:
                                    Text("Erore")
                                }
                                
                                Spacer()
                            }
                            .padding(.bottom,25)
                            
                        
                            HStack {
                                Text("wephgweng")
                                    .font(.system(size: 35,weight: .medium))
                                    .foregroundColor(Color("Color_font_1"))
                                    .multilineTextAlignment(.leading)
                                Spacer()
                            }.padding(.bottom,10)
                            VStack(spacing:40){
                                
                                VStack(spacing:10){
                                    
                                        
                                    
                                    HStack {
                                        Text("qer0bihnm")
                                            .font(.system(size: 30,weight: .medium))
                                            .foregroundColor(Color("Color_font"))
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                    }
                                    HStack {
                                        switch finishForFirst{
                                        case 9...12:
                                            Text("wegweg")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        case 5...9:
                                            Text("weohnwegh")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        case 0...5:
                                            Text("weoyjmg")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        default:
                                            Text("Erore")
                                        }
                                        Spacer()
                                    }
                                }
                                VStack(spacing:10){
                                    HStack {
                                        Text("weignbr")
                                            .font(.system(size: 30,weight: .medium))
                                            .foregroundColor(Color("Color_font"))
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                    }
                                    HStack {
                                        switch finishForFirst{
                                        case 9...12:
                                            Text("ewrpohbynb")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        case 5...9:
                                            Text("wei9ybvn")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        case 0...5:
                                            Text("weryb")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        default:
                                            Text("Erore")
                                        }
                                        Spacer()
                                    }
                                }
                                VStack(spacing:10){
                                    HStack {
                                        Text("vr09ebhn")
                                            .font(.system(size: 30,weight: .medium))
                                            .foregroundColor(Color("Color_font"))
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                    }
                                    HStack {
                                        switch finishForFirst{
                                        case 9...12:
                                            Text("wer90yihibnm")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        case 5...9:
                                            Text("erwpoyghnbvm")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        case 0...5:
                                            Text("erighbnm")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        default:
                                            Text("Erore")
                                        }
                                        Spacer()
                                    }
                                }
                                VStack(spacing:10){
                                    HStack {
                                        Text("wthnmbewerw")
                                            .font(.system(size: 30,weight: .medium))
                                            .foregroundColor(Color("Color_font"))
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                    }
                                    HStack {
                                        switch finishForFirst{
                                        case 9...12:
                                            Text("weoygbnm43hg")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        case 5...9:
                                            Text("weuhnmb")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        case 0...5:
                                            Text("weuhnmb")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        default:
                                            Text("Erore")
                                        }
                                        Spacer()
                                    }
                                }
                                
                            }
                            
                        }
                    }.padding(.horizontal,15)
                        .onAppear(){
                           finishForFirst =  points[0] +  points[1] +  points[4] +  points[5] +  points[6] +  points[7]
                           
                            
                        }
                }
            } else {
                VStack(spacing:15){
                    bar_progress(progress: Float(index), total: Float(textTest.count))
                        .frame(height: 15)
                        .padding(.bottom,10)
                    HStack{
                        Text("\(textTest[index].mainText)")
                            .font(.system(size: 25,weight: .medium))
                            .foregroundColor(Color("Color_font"))
                            .multilineTextAlignment(.leading)
                        Spacer()
                    } .padding(.bottom,10)
                    VStack(spacing:15){
                        HStack {
                           
                            
                            
                           
                                Text("\(textTest[index].qwe1Str)")
                                .foregroundColor(drag == textTest[index].qwe1 ? Color("Color_font_2") : Color("Color_font"))
                                    .font(.system(size: 20,weight: .medium))
                                    .multilineTextAlignment(.leading)
                                    .padding(15)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .lineLimit(10)
                                    .background(
                                    
                                    
                                        RoundedRectangle(cornerRadius: 10)
                                           
                                            .foregroundColor(drag == textTest[index].qwe1 ? Color("Color_font_1") : Color("Color_button"))
                                    )
                             
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
                          
                            Text("\(textTest[index].qwe2Str)")
                                .foregroundColor(drag == textTest[index].qwe2 ? Color("Color_font_2") : Color("Color_font"))
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .padding(15)
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(10)
                                .background(
                                
                                
                                    RoundedRectangle(cornerRadius: 10)
                                       
                                        .foregroundColor(drag == textTest[index].qwe2 ? Color("Color_font_1") : Color("Color_button"))
                                )
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
                          
                            Text("\(textTest[index].qwe3Str)")
                                .foregroundColor(drag == textTest[index].qwe3 ? Color("Color_font_2") : Color("Color_font"))
                                .font(.system(size: 20,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .padding(15)
                                .lineLimit(10)
                                .fixedSize(horizontal: false, vertical: true)
                                .background(
                                
                                
                                    RoundedRectangle(cornerRadius: 10)
                                       
                                        .foregroundColor(drag == textTest[index].qwe3 ? Color("Color_font_1") : Color("Color_button"))
                                )
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
                                Text("we0iyhgbnvew")
                                    .font(.system(size: 25,weight: .medium))
                                    .foregroundColor(Color("Color_font_2"))
                                    .multilineTextAlignment(.center)
                            } else {
                                Text("weoytgbgnvm")
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
