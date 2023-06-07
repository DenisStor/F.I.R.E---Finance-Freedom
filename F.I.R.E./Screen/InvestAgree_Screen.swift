//
//  InvestAgree.swift
//  F.I.R.E.
//
//  Created by Никита Малыхин on 07.06.2023.
//

import SwiftUI

struct InvestAgree_Screen: View {
    
    @State private var name : [String] = [
    NSLocalizedString("Акции", comment: ""),
    NSLocalizedString("Облигации", comment: ""),
    NSLocalizedString("Криптовалюта", comment: ""),
    NSLocalizedString("Недвижимость", comment: ""),
    ]
    
    @State private var text1 : [String] = [
    NSLocalizedString("Test", comment: ""),
    NSLocalizedString("Yujds", comment: ""),
    NSLocalizedString("Криптовалюта", comment: ""),
    NSLocalizedString("Недвижимость", comment: ""),
    ]
    @State private var IsOn : Int = 0
    @State private var clr : [Bool] = [true , false , false , false]
    
    
    var body: some View {
        ZStack {
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false){
                VStack (alignment: .leading, spacing: 20) {
                    HStack{
                        Text("Инвестируем\nправильно")
                            .font(.system(size: 40, weight: .semibold))
                            .foregroundColor(Color("Color_font_1"))
                        Spacer()
                    }.padding(.horizontal,15)
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach (0...3, id: \.self) { index in
                                Text(name[index])
                                    .padding(20)
                                    .font(.system(size: 18, weight: .medium))
                                    .foregroundColor(clr[index] ? Color("Color_font_2") : Color("Color_font"))
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(clr[index] ? Color("Color_font_1") : Color("Color_button") )
                                        
                                    )
                                    .padding(.leading,name[index] == "Акции" ? 15 : 5)
                                    .onTapGesture {
                                        if name[index] == "Акции" {
                                            IsOn = 0
                                           clr[0] = true
                                            clr[1] = false
                                            clr[2] = false
                                            clr[3] = false
                                        }
                                        if name[index] == "Облигации" {
                                            IsOn = 1
                                            clr[0] = false
                                             clr[1] = true
                                             clr[2] = false
                                             clr[3] = false
                                        }
                                        if name[index] == "Криптовалюта" {
                                            IsOn = 2
                                            clr[0] = false
                                             clr[1] = false
                                             clr[2] = true
                                             clr[3] = false
                                        }
                                        if name[index] == "Недвижимость" {
                                            IsOn = 3
                                            clr[0] = false
                                             clr[1] = false
                                             clr[2] = false
                                             clr[3] = true
                                        }
                                    }
                            }
                            
                           
                                
                            }
                            
                        }
                
                    
                    //1 текст
                    VStack(spacing:0) {
                        if IsOn == 0 {
                            Text("Акции")
                            Text("Акции")
                            Text("Акции")
                            Text("Акции")
                            Text("Акции")
                            Text("Акции")
                            
                            
                            
                            
                            
                            
                        }
                        if IsOn == 1 {
                            Text("обилиги")
                        }
                        if IsOn == 2 {
                            Text("крипта")
                        }
                        if IsOn == 3 {
                            Text("недвига")
                        }
                    }.padding(.horizontal,15)
                    
                }
            }
        }
    }
    struct InvestAgree_Screen_Previews: PreviewProvider {
        static var previews: some View {
            InvestAgree_Screen()
        }
    }
}
