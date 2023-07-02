//
//  Loading_screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 01.07.2023.
//

import SwiftUI

struct Loading_screen: View {
    let arrayFrame = [50,75,50,75]
    @State private var index = 0
    @State private var timer = Timer.TimerPublisher(interval: 0.5, runLoop: .current, mode: .common).autoconnect()
    
    var body: some View {
        
        
        
        if arrayFrame.count-1 == index {
            ContentView()
        } else {
            ZStack{
                Color("Color_font_1")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image("name_name_name")
                        .onReceive(timer) { i in
                            index += 1
                        }
                }
            }
        }
    }
    
    struct Loading_screen_Previews: PreviewProvider {
        static var previews: some View {
            Loading_screen()
        }
    }
}
