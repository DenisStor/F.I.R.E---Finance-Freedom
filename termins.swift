//
//  termins.swift
//  F.I.R.E.
//
//  Created by Никита Малыхин on 15.06.2023.
//

import SwiftUI



struct termins: View {
    @State private var maintext : [String] = []
    @State private var maintitle : [String] = []
    
    
    var body: some View {
        ZStack {
            Color("Color_back")
            .edgesIgnoringSafeArea(.all)
            VStack{
                ForEach(0..<3) { index in
                    HStack{
                        Text("")
                    }
                }
            }
        }
    }
}

struct termins_Previews: PreviewProvider {
    static var previews: some View {
        termins()
    }
}
