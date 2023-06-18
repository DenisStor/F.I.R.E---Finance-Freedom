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
    NSLocalizedString("qB1", comment: ""),
    NSLocalizedString("famous_name4", comment: ""),


    ]
    
    
    //их имена \n для разделения имени и фамилии
    @State private var Image1 : [String] = ["Baffet","Bill","Elon"]
    
    
    
    @State private var title : [String] = [
    NSLocalizedString("famous_name1", comment: ""),
    NSLocalizedString("famous_name3", comment: ""),
    NSLocalizedString("famous_name4", comment: ""),

    ]
    
    
    
    //заголовок статьи
    @State private var Image2 : [String] = ["testimage","bill2scr","elon2scr",] // сюда картинки
    @State private var Text1 : [String] = [
        NSLocalizedString("famouse1text", comment: ""),
        NSLocalizedString("fam3text", comment: ""),
        NSLocalizedString("fam4text", comment: ""),


        ] // основной текст
   

    var body: some View {
        
        ZStack{
       
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
         
            NavigationStack{
                
                ScrollView(showsIndicators: false){
                    
                    LazyVStack(spacing: 15){
                        
                        ForEach(0..<3) { index in
                            NavigationLink {
                                
                                ZStack{
                                    Color("Color_back")
                                        .edgesIgnoringSafeArea(.all)
                                    GeometryReader { g in
                                        let screen = g.size
                                        ScrollView{
                                         
                                            VStack{
                                              
                                                ZStack {
                                                    Image(Image2[index])
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .cornerRadius(30)
                                                    VStack {
                                                        Spacer()
                                                        Text(title[index])
                                                            .multilineTextAlignment(.center)
                                                            .font(.system(size: 25, weight: .medium))
                                                            .foregroundColor(Color("Color_bl"))
                                                            .padding(.bottom,1)
                                                          
                                                        Text ("Предприниматель")
                                                        .font(.system(size: 15, weight: .medium))
                                                        .foregroundColor(Color("textField"))
                                                        .padding(.bottom,15)
                                                       
                                                    }
                                                    
                                                    
                                                }
                                                
                                                Text(Text1[index])
                                                    
                                                    .font(.system(size: 20, weight: .medium))
                                                    .lineSpacing(10)
                                                    .padding(.top,15)
                                                
                                                
                                                
                                                
                                            }  .padding(.horizontal, 20)
                                        }
                                       
                                        
                                        
                                    }
                                 
                                }
                                
                            } label: {
                                
                                
                                ZStack{
                                    
                                    
                                    Image(Image1[index])
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .cornerRadius(30)
                                    VStack{
                                        Spacer()
                                        HStack{
                                            
                                            Text(name[index])
                                             
                                            .font(.system(size: 30, weight: .medium))
                                            .foregroundColor(Color("Color_bl"))
                                            .multilineTextAlignment(.leading)
                                            Spacer()
                                        }
                                    }.padding(.horizontal, 25)
                                        .padding(.vertical, 20)
                                }
                                    
                            }
                        }
                        
                    }
                } .padding(.horizontal,15)
                   
                
            }
            
        }
        
    }
    
}

struct Famous_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Famous_Screen()
    }
}
