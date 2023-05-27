//
//  Test_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 27.05.2023.
//

import SwiftUI

struct Test_Screen: View {
    var body: some View {
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack{
                    
                    
                    VStack{
                        RoundedRectangle(cornerRadius: 30)
                            .frame(height: 60)
                    }
                    
                }
            }.padding(.horizontal,15)
            
        }
    }
}

struct Test_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Test_Screen()
    }
}
