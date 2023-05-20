//
//  Home_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 20.05.2023.
//

import SwiftUI

struct Home_Screen: View {
    @AppStorage ("currentPage") var currentPage = 1
    @State private var test : Bool = false
    var body: some View {
        ZStack{
            NavigationStack{
                ScrollView{
                    
                    
                    
                    VStack(spacing: 20){
                        
                        ZStack{
                            NavigationLink { Advice_Screen()} label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 30)
                                        .frame(height: 150)
                                        .foregroundColor(Color("Color_font_1"))
                                    VStack(alignment: .leading,spacing: 5){
                                        Text("Создавайте финансовые резервы")
                                            .font(.system(size: 30,weight: .medium))
                                            .foregroundColor(Color("Color_font_2"))
                                            .multilineTextAlignment(.leading)
                                        HStack{
                                            VStack{
                                                Text("Открыть советы")
                                                    .font(.system(size: 24,weight: .medium))
                                                
                                                    .overlay(
                                                        Rectangle().frame(height: 2).offset(y: 4)
                                                        , alignment: .bottom)
                                            } .multilineTextAlignment(.leading)
                                            Image("Home_image")
                                                .renderingMode(.template)
                                        }.foregroundColor(Color(white: 1, opacity: 0.5))
                                    }.frame(maxWidth: 360)
                                        .padding(.horizontal)
                                    
                                }
                            }
                            
                            
                            
                        }
                    }
                    
                    
                    
                    
                    }.padding(.horizontal,10)
                    .navigationTitle("Главная")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct Home_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Home_Screen()
    }
}
