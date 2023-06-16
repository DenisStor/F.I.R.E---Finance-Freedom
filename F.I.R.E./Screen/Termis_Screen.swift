//
//  Termis_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 16.06.2023.
//

import SwiftUI

struct Termis_Screen: View {
    @State private var TextIN : [String] = [
        NSLocalizedString("Text", comment: ""),
        NSLocalizedString("Text", comment: ""),
        NSLocalizedString("Text", comment: ""),
    
    
    
    
    
    ]
    @State private var Title : [String] = [
        NSLocalizedString("Title", comment: ""),
        NSLocalizedString("Title", comment: ""),
        NSLocalizedString("Title", comment: ""),
    
    
    
    
    
    
    ]
    var body: some View {
        NavigationStack{
            ZStack{
                Color("Color_back")
                    .edgesIgnoringSafeArea(.all)
                ScrollView(showsIndicators: false) {
                    LazyVStack(spacing:10){
                        ForEach(0..<2){ index in
                            VStack(spacing:10){
                                HStack{
                                    Text("\(Title[index])")
                                        .font(.system(size: 25,weight: .medium))
                                        .foregroundColor(Color("Color_font_1"))
                                        .multilineTextAlignment(.leading)
                                    
                                    Spacer()
                                }
                                HStack{
                                    Text(TextIN[index])
                                        .font(.system(size: 20,weight: .medium))
                                        .foregroundColor(Color("Color_font"))
                                        .multilineTextAlignment(.leading)
                                    
                                    Spacer()
                                }
                                Divider()
                                    .frame(height: 2)
                            }
                        }
                        
                    }.padding(.horizontal,15)
                }
            }
        }
            
    }
}

struct Termis_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Termis_Screen()
    }
}
