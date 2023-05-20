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
       
            
            NavigationStack{
                ZStack{
                    Color("Color_back")
                        .edgesIgnoringSafeArea(.all)
                ScrollView{
                    
                    
                    
                    VStack(spacing: 20){
                        
                        
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
                                            Image("To_Image")
                                                .renderingMode(.template)
                                        }.foregroundColor(Color(white: 1, opacity: 0.5))
                                    }.frame(maxWidth: 360)
                                        .padding(.horizontal)
                                    
                                }
                            }
                            
                        NavigationLink { AboutFIRE_Screen()} label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 30)
                                    .frame(height: 280)
                                    .foregroundColor(Color("Color_wgt"))
                                VStack(alignment: .leading,spacing: 5){
                                    Text("F.I.R.E. - это философия финансовой независимости. Она стремится к достижению финансовой свободы.")
                                        .font(.system(size: 24,weight: .medium))
                                        .foregroundColor(Color("Color_font_2"))
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                        .frame(maxHeight: 30)
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 14)
                                            .foregroundColor(Color("Color_font_1"))
                                        HStack{
                                            Text("Подробнее")
                                                .foregroundColor(Color("Color_font_2"))
                                                .font(.system(size: 24,weight: .medium))
                                            Image("To_Image")
                                               
                                                
                                        }
                                    }.frame(maxWidth: 340,maxHeight:55)
                                        
                                }.frame(maxWidth: 360)
                                    .padding(.horizontal)
                                
                            }
                        }
                            
                        
                    }
                    
                    
                    
                    
                    }.padding(.horizontal,10)
                    .navigationTitle("main")
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
