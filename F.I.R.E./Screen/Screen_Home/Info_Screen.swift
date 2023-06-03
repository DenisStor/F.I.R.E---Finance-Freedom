//
//  Info_Scre
//
//  Famous_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 23.05.2023.
//

import SwiftUI

struct info_Screen: View {
    @State private var name : [String] = [
    NSLocalizedString("famous_name1", comment: ""), // облигации
    NSLocalizedString("famous_name3", comment: ""), // акции
    NSLocalizedString("famous_name4", comment: ""), // крипта
    NSLocalizedString("famous_name2", comment: ""), // недвижимость
    
    ]
    
    
    //их имена \n для разделения имени и фамилии
    @State private var Image_main : [String] = ["Baffet","Bill","Elon","Pitere"]
    
    
    @State private var Color1 : [String] = ["Color_font_2","Color_font","Color_font","Color_font"]
    
    @State private var title : [String] = [
    NSLocalizedString("famous_name1", comment: ""),
    NSLocalizedString("famous_name3", comment: ""),
    NSLocalizedString("famous_name4", comment: ""),
    NSLocalizedString("famous_name2", comment: ""),
    
    ]
    
    
    
    //заголовок статьи
    @State private var Image2 : [String] = ["baffet1scr","bill2scr","elon2scr","litch2scr"] // картинка
    @State private var Text1 : [String] = [
        NSLocalizedString("famouse1text", comment: ""),
        NSLocalizedString("fam3text", comment: ""),
        NSLocalizedString("fam4text", comment: ""),
        NSLocalizedString("fam2text", comment: ""),
        NSLocalizedString("word_4", comment: ""),
        ] // основной текст//
    
    var body: some View {
        
        ZStack{
       
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
         
            NavigationStack{
                
                ScrollView(showsIndicators: false){
                    
                    LazyVStack(spacing: 15){
                        
                        ForEach(0..<4) { index in
                            NavigationLink {
                                
                                ZStack{
                                    Color("Color_back")
                                        .edgesIgnoringSafeArea(.all)
                                    ScrollView{
                                        
                                        VStack(alignment: .leading){
                                            Text("Акции")
                                                .font(.system(size: 20.4, weight: .medium))
                                                .lineSpacing(10)
                                                .padding(20)
                                            Text("Image")
                                                .font(.system(size: 20.4, weight: .medium))
                                                .lineSpacing(10)
                                                .padding(20)
                                            
                                            Text("Что такое акция")
                                                .font(.system(size: 20.4, weight: .medium))
                                                .lineSpacing(10)
                                                .padding(20)
                                            
                                            Text("Акция — это ценная бумага, которую выпускает акционерное общество, другими словами — компания-эмитент. Все инвесторы, которые купили акции, стали совладельцами компании. Акция как раз и подтверждает, что у ее владельца есть доля в компании, пусть даже совсем маленькая.")
                                                .font(.system(size: 20.4, weight: .medium))
                                                .lineSpacing(10)
                                                .padding(20)
                                            Text("Какие бывают виды акций?")
                                                .font(.system(size: 20.4, weight: .medium))
                                                .lineSpacing(10)
                                                .padding(20)
                                            Text("text")
                                                .font(.system(size: 20.4, weight: .medium))
                                                .lineSpacing(10)
                                                .padding(20)
                                            Text("Где можно купить акции?")
                                                .font(.system(size: 20.4, weight: .medium))
                                                .lineSpacing(10)
                                                .padding(20)
                                            Text("На бирже или вне биржи. Торговля на бирже более прозрачна — котировки акций и других ценных бумаг можно легко отследить. Когда вы покупаете или продаете акции напрямую, вне биржи, есть риск, что цены будут завышены или занижены по сравнению с рыночными.")
                                                .font(.system(size: 20.4, weight: .medium))
                                                .lineSpacing(10)
                                                .padding(20)
                                            
                                            
                                        }
                                    }
                                }
                                
                            } label: {
                                
                                
                                ZStack{
                                    
                                    
                                    Image(Image_main[index])
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    VStack{
                                        HStack{
                                            
                                            Text(name[index])
                                             
                                            .font(.system(size: 43.4, weight: .medium))
                                            .foregroundColor(Color(Color1[index]))
                                            .multilineTextAlignment(.leading)
                                            Spacer()
                                        }
                                    }.padding(.horizontal,20)
                                }.frame(height: 200)
                            }
                        }
                        
                    }
                } .padding(.horizontal,15)
    
                
            }
            
        }
        
    }
    
}




struct Info_Screen_Previews: PreviewProvider {
    static var previews: some View {
    info_Screen()
    }
}
