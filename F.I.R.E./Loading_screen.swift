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
    @State private var timer = Timer.TimerPublisher(interval: 2, runLoop: .main, mode: .common).autoconnect()
    
    var body: some View {
        ZStack{
            
            
            if index == arrayFrame.count {
                ContentView()
            } else {
                VStack{
                    
                    
                    
                    
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width:CGFloat(arrayFrame[index]), height: 50 )
                }.animation(.spring(), value: index)
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
