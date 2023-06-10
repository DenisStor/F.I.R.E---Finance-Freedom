//
//  Advice_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 20.05.2023.
//

import SwiftUI

struct Advice_Screen: View {
    
      let words = strings()
      @State private var currentword = ""
      
    var body: some View {
        ZStack{
            
            Color("Color_back")
                .ignoresSafeArea()
            Image("Advice_image")
                .resizable()
                
                .ignoresSafeArea()
                
            VStack(alignment: .leading){
                
                HStack{
                    Text("\(currentword)")
                        .font(.system(size: 30,weight: .medium))
                        .foregroundColor(Color("Color_font"))
                    Spacer()
                    
                }
                

            
                HStack{
                    Text("readmore1")
                        .font(.system(size: 24,weight: .medium))
                        .overlay(
                            Rectangle().frame(height: 2).offset(y: 4)
                            , alignment: .bottom)
                        Image("Start_Image_1")
                        .renderingMode(.template)
                }.foregroundColor(Color("Color_font_1"))
                .onTapGesture {
                    currentword = words.word.randomElement() ?? ""
                    let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                    impactHeavy.impactOccurred()
                }
            }.frame(maxHeight: 270)
                .padding(.horizontal,15)
            
        }.toolbar(.hidden, for: .tabBar)//cкрыть таб бар
            .onAppear{
                                    
                                    if currentword.isEmpty {
                                        currentword = words.word.randomElement() ?? ""
                                    }
                                    Timer.scheduledTimer(withTimeInterval: 30, repeats: true) { _ in
                                        currentword = words.word.randomElement() ?? ""
                                    }
                                    
                                }
                                
    }
}

struct Advice_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Advice_Screen()
    }
}
