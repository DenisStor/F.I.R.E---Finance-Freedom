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
            if textTest.count == index {
                ScrollView (showsIndicators: false) {
                    VStack{
                        VStack(spacing:10){
                            HStack {
                                Text("Вы")
                                    .font(.system(size: 30,weight: .medium))
                                    .foregroundColor(Color("Color_font"))
                                    .multilineTextAlignment(.leading)
                                Spacer()
                            }
                            HStack { // 1 2 5 6 7 8
                                switch finishForFirst{
                                case 9...12:
                                    Text("Агрессивный\nинвестор")
                                        .font(.system(size: 40,weight: .semibold))
                                        .foregroundColor(Color("Color_font_1"))
                                        .multilineTextAlignment(.leading)
                                case 5...9:
                                    Text("Умеренный\nинвестор")
                                        .font(.system(size: 40,weight: .semibold))
                                        .foregroundColor(Color("Color_font_1"))
                                        .multilineTextAlignment(.leading)
                                case 0...5:
                                    Text("Консервативный\nинвестор")
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
                                    Text("Это инвестор, который предпочитает стратегию инвестирования, характеризующуюся высоким уровнем риска и ориентацией на получение максимальной возможной доходности. Они готовы вкладывать свои средства во волатильные рынки и активы с высоким потенциалом роста, даже если это связано с возможностью больших потерь.")
                                        .font(.system(size: 25,weight: .medium))
                                        .foregroundColor(Color("Color_font"))
                                        .multilineTextAlignment(.leading)
                                case 5...9:
                                    Text("это инвестор, который преследует баланс между риском и доходностью, не стремится к чрезмерно высоким доходам, но готов принять некоторую степень риска в своих инвестициях для достижения умеренного уровня доходности.")
                                        .font(.system(size: 25,weight: .medium))
                                        .foregroundColor(Color("Color_font"))
                                        .multilineTextAlignment(.leading)
                                case 0...5:
                                    Text("это инвестор, который предпочитает низкий уровень риска и стабильность в своих инвестициях, с акцентом на сохранение капитала.")
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
                                Text("Вам подойдут")
                                    .font(.system(size: 35,weight: .medium))
                                    .foregroundColor(Color("Color_font_1"))
                                    .multilineTextAlignment(.leading)
                                Spacer()
                            }.padding(.bottom,10)
                            VStack(spacing:40){
                                
                                VStack(spacing:10){
                                    
                                        
                                    
                                    HStack {
                                        Text("Акций")
                                            .font(.system(size: 30,weight: .medium))
                                            .foregroundColor(Color("Color_font"))
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                    }
                                    HStack {
                                        switch finishForFirst{
                                        case 9...12:
                                            Text("Акции: Приблизительно n% (70-80%) портфеля можно выделить на инвестиции в акции компаний с высоким потенциалом роста, новаторские компании или активы на развивающихся рынках.")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        case 5...9:
                                            Text("Акции: Приблизительно n% (50%) портфеля может быть выделено на инвестиции в акции стабильных компаний с хорошими фундаментальными показателями и умеренным ростом.")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        case 0...5:
                                            Text("Дивидендные акции: Приблизительно n% (5-10%) портфеля можно выделить на инвестиции в акции компаний с устойчивыми дивидендными выплатами и долгой историей финансовой стабильности.р")
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
                                        Text("Облигации")
                                            .font(.system(size: 30,weight: .medium))
                                            .foregroundColor(Color("Color_font"))
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                    }
                                    HStack {
                                        switch finishForFirst{
                                        case 9...12:
                                            Text("Облигации: Приблизительно n% (10-20%) портфеля можно выделить на более высокодоходные, но рискованные облигации, такие как корпоративные облигации с низким рейтингом или облигации развивающихся стран.")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        case 5...9:
                                            Text("Облигации: Приблизительно n% (30%) портфеля можно выделить на облигации среднего и высокого качества, которые обеспечивают стабильный доход и уменьшают риск.")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        case 0...5:
                                            Text("Облигации: Приблизительно n% (60-70%) портфеля можно выделить на инвестиции в надежные и стабильные облигации с высоким кредитным рейтингом и низким уровнем риска.")
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
                                        Text("Инвестиционные фонды")
                                            .font(.system(size: 30,weight: .medium))
                                            .foregroundColor(Color("Color_font"))
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                    }
                                    HStack {
                                        switch finishForFirst{
                                        case 9...12:
                                            Text("Инвестиционные фонды: Приблизительно n% (5-10%) портфеля можно инвестировать в активно управляемые инвестиционные фонды, которые ориентированы на высокую доходность или специализируются на определенных секторах или регионах.")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        case 5...9:
                                            Text("Инвестиционные фонды: Приблизительно n% (10-15%) портфеля можно инвестировать в различные инвестиционные фонды, такие как фонды смешанного типа или фонды индексного инвестирования, чтобы получить дополнительную диверсификацию и доступ к различным рынкам.")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        case 0...5:
                                            Text(" Инвестиционные фонды: Приблизительно n% (5-10%) портфеля можно инвестировать в консервативные инвестиционные фонды, такие как фонды с фокусом на сохранение капитала или фонды смешанного типа с умеренным риском.")
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
                                        Text("Альтернативные\nактивы")
                                            .font(.system(size: 30,weight: .medium))
                                            .foregroundColor(Color("Color_font"))
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                    }
                                    HStack {
                                        switch finishForFirst{
                                        case 9...12:
                                            Text("Альтернативные инвестиции: Приблизительно n% (5-10%) портфеля можно выделить на альтернативные инвестиции, такие как недвижимость, венчурный капитал или фонды сырьевых товаров, чтобы получить дополнительную диверсификацию и потенциально высокую доходность.")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        case 5...9:
                                            Text("Альтернативные инвестиции: Приблизительно n% (5-10%) портфеля можно выделить на альтернативные инвестиции, такие как недвижимость, сырьевые товары или частные инвестиции, чтобы добавить дополнительную стабильность и защиту от рыночной волатильности.")
                                                .font(.system(size: 20,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                        case 0...5:
                                            Text("Денежные средства и сбережения: Приблизительно n% (20-30%) портфеля можно удерживать в безрисковых активах, таких как депозиты, сберегательные счета или денежные фонды, чтобы обеспечить ликвидность и сохранение капитала.")
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
