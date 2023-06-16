//
//  Test_Binding_Model.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 16.06.2023.
//

import SwiftUI

struct Test_Binding_Model: View {
    
    
    let total : Int // для прогресс бара
    let titel : [String]
    let text : [String]
    
    @State private var index : Int = 0
    
    var body: some View {
        GeometryReader { g in
            let screen = g.size
            ZStack{
                Color("Color_back")
                    .edgesIgnoringSafeArea(.all)
                if index == total {
                    VStack {
                        
                    }.padding(.horizontal,15)
                } else {
                    VStack{
                        bar_progress(
                            progress: Float(index),
                            total: Float(total)
                        )
                        // бар
                        .frame(height: 12)
                        HStack{
                            Text(titel[index])
                        }
                        HStack{
                            Text(text[index])
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 30)
                                .frame(height: screen.height / 10)
                                .foregroundColor(Color("Color_font_1"))
                            if total - 1 == index {
                                Text("Закончить")
                                    .font(.system(size: 25,weight: .medium))
                                    .foregroundColor(Color("Color_font_2"))
                            } else {
                                Text("Дальше")
                                    .font(.system(size: 25,weight: .medium))
                                    .foregroundColor(Color("Color_font_2"))
                            }
                        } //кнопка
                        
                        
                        
                        
                        
                    }.padding(.horizontal,15)
                }
            }
        }
    }
}

struct Test_Binding_Model_Previews: PreviewProvider {
    static var previews: some View {
        Test_Binding_Model(total: 5,titel: ["hello","hello","hello","hello","hello"],text: ["hello","hello","hello","hello","hello"])
    }
}
