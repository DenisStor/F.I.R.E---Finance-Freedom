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
    var TrueQwestion : [Bool?]
    
    
    @State private var index : Int = 0
    
    var body: some View {
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            if index >= totalQwestion {
                VStack{
                  Text("Test")
                }
            }
            else {
                VStack(alignment: .leading,spacing:20){
                    bar_progress(progress: Float(index), total: Float(totalQwestion))
                        .frame(height: 40)
                    Text("\(Title[index])")
                    Text("да")
                        .onTapGesture {
                            if TrueQwestion[index] == nil {
                                
                          //     TrueQwestion[index] = true
                                
                            }
                        }
                    Text("нет")
                        .onTapGesture {
                            
                            
                        }
                    VStack{
                        
                        if totalQwestion-1 == index
                        {
                            Text("закончить")
                        } else {
                            ZStack{
                                Text("Далее")
                            }.opacity(TrueQwestion[index] == nil ? 0.5 : 1)
                        }
                    }.onTapGesture {
                        if TrueQwestion[index] == nil {
                            
                        } else {
                            index += 1
                        }
                    }
                }
            }
        }.padding(.horizontal,15)
    }
}

struct Test_modi_Previews: PreviewProvider {
    static var previews: some View {
        Test_modi(totalQwestion: 3,Title: ["1","2","3"], Text_info: ["ds edthtys?", "levftnt?", "levftnt?"], TrueQwestion: [nil, nil,nil])
    }
}
