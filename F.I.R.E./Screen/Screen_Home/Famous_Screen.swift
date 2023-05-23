//
//  Famous_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 23.05.2023.
//

import SwiftUI

struct Famous_Screen: View {
    var body: some View {
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView{
                LazyVStack(spacing:20){
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                        HStack{
                            Spacer()
                            VStack{
                                Spacer()
                                Image("test")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                        }
                    }.frame(height: 194)
                    
                    
                }
            }.padding(.horizontal,15)
            
            
            
        }
    }
}

struct Famous_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Famous_Screen()
    }
}
