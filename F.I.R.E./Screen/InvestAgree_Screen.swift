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
                    }
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach (0...3, id: \.self) { index in
                                Text(name[index])
                                    .padding(20)
                                    .font(.system(size: 18, weight: .medium))
                                    .foregroundColor(Color("Color_font_2"))
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(Color("Color_font_1"))
                                        
                                    )
                                
                            }
                                
                            }
                            
                        }
                
                    
                    //1 текст
                    HStack {
                        Text("dsds")
                    }
                    
                } .padding(.horizontal,10)
            }
        }
    }
    struct InvestAgree_Screen_Previews: PreviewProvider {
        static var previews: some View {
            InvestAgree_Screen()
        }
    }
}
