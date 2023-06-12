//
//  time_screen.swift
//  F.I.R.E.
//
//  Created by Никита Малыхин on 12.06.2023.
//

import SwiftUI

struct Start_Screen: View {
    @AppStorage ("currentPage") var currentPage : Int = 1
    var body: some View {
        GeometryReader { parametrs in
            let g = parametrs.size
            ZStack{
                Color("Color_font_1")
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing: 20){
                    
                   
                    Spacer()
                    Image("Start_Image")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.horizontal, -15)
                        .frame(height: g.height / 5)
                        .foregroundColor(Color("Color_font_2"))
                    Spacer()
                    VStack(spacing:5){
                        HStack {
                            Text("Fire_3")
                                .font(.system(size: 60,weight: .medium))
                                .foregroundColor(Color("Color_font_2"))
                            Spacer()
                        }
                        HStack {
                            Text("F.I.R.E.1")
                                .font(.system(size: 22,weight: .medium))
                                .foregroundColor(Color("Color_font_2"))
                                .lineSpacing(3)
                            Spacer()
                        }
                        .padding(.bottom,10)
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("Color_font_2"))
                        Text("menuStart")
                            .font(.system(size: 25,weight: .medium))
                            .foregroundColor(Color("Color_black"))
                        
                    }.frame(height: g.height / 12 )
                    .onTapGesture {
                        currentPage = 2
                        }
                    
                    
                    
                    
                }.padding(.horizontal,15)
                    .padding(.vertical,10)
            }
        }
    }
}

struct Start_screen: PreviewProvider {
    static var previews: some View {
        Start_Screen()
           
    }
}
