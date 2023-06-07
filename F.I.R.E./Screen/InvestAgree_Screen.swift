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
                                        IsOn = index
                                      
                                            clr[0] = false
                                            clr[1] = false
                                            clr[2] = false
                                            clr[3] = false
                                            clr[IsOn] = true
                                            
                                        
                                        
                                        
                                        
                                        
                                        
                                    }
                                    }
                            }
                            }
                    //1 текст
                    VStack(spacing:15) {
                        if IsOn == 0 {
                            
                            HStack{
                                Text("Облигации — долговая расписка, ее выпускает эмитент, которому нужны средства. Покупая эти бумаги, инвестор дает свои деньги взаймы, за что получает доход")
                                    .font(.system(size: 23, weight: .semibold))
                                Spacer()
                            }
                            
                            HStack{
                           
                                Text("Шаг 1")
                                    .font(.system(size: 40, weight: .semibold))
                                    .foregroundColor(Color("Color_font_1"))
                                    .padding(.top, 10)
                                Spacer()
                                    
                                
                            }
                            HStack{
                           
                                Text("Прежде чем приобрести облигации того или иного эмитента, ознакомьтесь с кредитными рейтингами, которые ему присвоены.")
                                    .font(.system(size: 23, weight: .medium))
                                    .padding(.bottom,10)
                                Spacer()
                                
                            }
                            
                            HStack{
                                VStack (alignment: .leading) {
                                    Text("Кредитные рейтинги:")
                                        .font(.system(size: 16.8, weight:.medium))
                                        .foregroundColor(Color("Color_font_3"))
                                    
                                    Image("creditAa")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    Text("чем ниже кредитный рейтинг, тем больше вероятность дефолта.")
                                        .font(.system(size: 16.8, weight:.medium))
                                        .foregroundColor(Color("Color_font_3"))
                                }
                                Spacer()
                            }
                            HStack{
                           
                                Text("Шаг 2")
                                    .font(.system(size: 40, weight: .semibold))
                                    .foregroundColor(Color("Color_font_1"))
                                    .padding(.top, 10)
                                Spacer()
                                    
                                
                            }
                            
                            HStack{
                           
                                Text("Убедиться, что этому эмитенту можно доверить свои средства, помогут не только кредитные рейтинги, но и представление о его деятельности — основные сведения можно подчерпнуть из презентаций компании и регулярной отчетности.")
                                    .font(.system(size: 23, weight: .medium))
                                    .padding(.bottom,10)
                                Spacer()
                                
                            }
                            
                            HStack{
                           
                                Text("Шаг 3")
                                    .font(.system(size: 40, weight: .semibold))
                                    .foregroundColor(Color("Color_font_1"))
                                    .padding(.top, 10)
                                Spacer()
                                    
                                
                            }
                            
                            HStack{
                           
                                Text("Они изучают эмитента, могут предоставлять наглядные таблицы и графики, то есть экономят ваши усилия и время при поиске необходимой информации.")
                                    .font(.system(size: 23, weight: .medium))
                                    .padding(.bottom,10)
                                Spacer()
                                
                            }
                            
                            
                            
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
