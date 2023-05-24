//
//  Famous_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 23.05.2023.
//

import SwiftUI

struct Famous_Screen: View {
    @State private var name : [String] = [
    NSLocalizedString("famous_name1", comment: ""),
    NSLocalizedString("famous_name3", comment: ""),
    NSLocalizedString("famous_name4", comment: ""),
    NSLocalizedString("famous_name2", comment: ""),
    NSLocalizedString("famous_name4", comment: ""),
    ]
    
    
    //их имена \n для разделения имени и фамилии
    @State private var Image1 : [String] = ["Baffet","Bill","Elon","Pitere"]
    
    
    @State private var Color1 : [String] = ["Color_font_2","Color_font","Color_font","Color_font"]
    
    @State private var title : [String] = [
    NSLocalizedString("famous_name1", comment: ""),
    NSLocalizedString("famous_name3", comment: ""),
    NSLocalizedString("famous_name4", comment: ""),
    NSLocalizedString("famous_name2", comment: ""),
    NSLocalizedString("word_4", comment: ""),
    ]
    
    
    
    //заголовок статьи
    @State private var Image2 : [String] = ["baffet1scr","bill2scr","elon2scr","litch2scr"] // картинка
    @State private var Text1 : [String] = [
        NSLocalizedString("famouse1text", comment: ""),
        NSLocalizedString("fam3text", comment: ""),
        NSLocalizedString("fam4text", comment: ""),
        NSLocalizedString("fam2text", comment: ""),
        NSLocalizedString("word_4", comment: ""),
        ] // основной текст
    
    var body: some View {
        
        ZStack{
       
         
            NavigationStack{
                
                ScrollView(showsIndicators: false){
                    
                    LazyVStack(spacing: 15){
                        
                        ForEach(0..<4) { index in
                            NavigationLink {
                                
                                ZStack{
                                    
                                    ScrollView{
                                        
                                        LazyVStack(alignment: .leading){
                                            Text(title[index])
                                                .font(.system(size: 53, weight: .medium)).foregroundColor(Color("Color_font_1"))
                                                .padding(.horizontal, 20)
                                            Image(Image2[index])
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                            
                                            Text(Text1[index])
                                                .font(.system(size: 20.4, weight: .medium))
                                                .lineSpacing(10)
                                                .padding(20)
                                     
                                                
                                            
                                            
                                        }
                                    }
                                }
                                
                            } label: {
                                
                                
                                ZStack{
                                    
                                    
                                    Image(Image1[index])
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
                }.padding(.horizontal,15)
    
                
            }
            
        }
        
    }
    
}

struct Famous_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Famous_Screen()
    }
}
