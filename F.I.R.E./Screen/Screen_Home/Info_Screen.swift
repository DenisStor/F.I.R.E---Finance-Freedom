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
    //Заголовок
    @State private var name : [String] = [
    NSLocalizedString("stockmenu", comment: ""),
    NSLocalizedString("cryptomenu", comment: ""),
    NSLocalizedString("obligimenu", comment: ""),
    NSLocalizedString("nedviga", comment: ""),
    
    ]
    
    
    // Картинки главная
    @State private var Image_main : [String] = ["Baffet","Bill","Elon","Pitere"]
    
    //Цвет шрифтов
    @State private var Color1 : [String] = ["Color_font_2","Color_font","Color_font","Color_font"]
    
    //Тайтл внутри
    @State private var title : [String] = [
    NSLocalizedString("stockmenu", comment: ""),
    NSLocalizedString("cryptomenu", comment: ""),
    NSLocalizedString("obligimenu", comment: ""),
    NSLocalizedString("nedviga", comment: ""),
    
    ]
    
    
    
    
    
    //картинка
    @State private var Image2 : [String] = ["line","bill2scr","elon2scr","litch2scr"] //
   
    //подтайтл
    @State private var undertitle : [String] = [
    NSLocalizedString("key_stock1", comment: ""),
    NSLocalizedString("", comment: ""),
    NSLocalizedString("", comment: ""),
    NSLocalizedString("", comment: ""),
    ]
    
    
    // 1 текст
    @State private var Text1 : [String] = [
        NSLocalizedString("key_stock2", comment: ""),
        NSLocalizedString("fam3text", comment: ""),
        NSLocalizedString("fam4text", comment: ""),
        NSLocalizedString("fam2text", comment: ""),
        NSLocalizedString("word_4", comment: ""),
        ]
    
    
    
    
    //подтайтл 2
    @State private var undertitletwo : [String] = [
    NSLocalizedString("key_stock3", comment: ""),
    NSLocalizedString("", comment: ""),
    NSLocalizedString("", comment: ""),
    NSLocalizedString("", comment: ""),
    ]
    
    //текст 2
    @State private var Text2 : [String] = [
    NSLocalizedString("", comment: ""),
    NSLocalizedString("", comment: ""),
    NSLocalizedString("", comment: ""),
    NSLocalizedString("", comment: ""),
    ]
    

    
    
    
    var body: some View {
        
        ZStack{
       
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
         
            NavigationStack{
                
                ScrollView(showsIndicators: false){
                    
                    LazyVStack(spacing: 10){
                        
                        ForEach(0..<4) { index in
                            NavigationLink {
                                
                                ZStack{
                                    Color("Color_back")
                                        .edgesIgnoringSafeArea(.all)
                                    ScrollView{
                                        
                                        VStack(alignment: .leading){
                                            Text(title[index])
                                                .font(.system(size: 50, weight: .medium))
                                                .foregroundColor(Color("Color_font_1"))
                                                .padding(20)
                                        
                                            Image("line")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                              
                                            HStack {
                                                Text(undertitle[index])
                                                    .font(.system(size: 36.4, weight: .semibold))
                                                    
                                                   
                                                
                                                Image("quest")
                                                    
                                            }.padding(20)
                                            Text(Text1[index])
                                                .font(.system(size: 20.4, weight: .medium))
                                                .lineSpacing(10)
                                                .padding(.horizontal,20)
                                            HStack {
                                                Text(undertitletwo[index])
                                                    .font(.system(size: 36.4, weight: .semibold))
                                                Image("dollar")
                                            }
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
