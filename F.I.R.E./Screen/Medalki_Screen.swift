//
//  Medalki_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 16.06.2023.
//

import SwiftUI

struct Medalki_Screen: View {
    @AppStorage ("test1")  var test1 : Int = 0
    var body: some View {
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack{
                    switch test1 {
                    case 0:
                        Image("")
                    case 1:
                        Image("")
                    case 2:
                        Image("")
                    default:
                        Text("Erorre")
                    }
                  
                } //test nomer z1
                
                
            }.padding(.horizontal,15)
        
        }
    }
}

struct Medalki_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Medalki_Screen()
    }
}
