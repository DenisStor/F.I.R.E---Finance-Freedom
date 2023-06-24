//
//  Termis_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 16.06.2023.
//

import SwiftUI

struct Termis_Screen: View {
    @State private var TextIN : [String] = [
        NSLocalizedString("InvTerm1.1", comment: ""),
        NSLocalizedString("InvTerm2.1", comment: ""),
        NSLocalizedString("InvTerm3.1", comment: ""),
        NSLocalizedString("InvTerm4.1", comment: ""),
        NSLocalizedString("InvTerm5.1", comment: ""),
        NSLocalizedString("InvTerm6.1", comment: ""),
        NSLocalizedString("InvTerm7.1", comment: ""),
        NSLocalizedString("InvTerm8.1", comment: ""),
        NSLocalizedString("InvTerm9.1", comment: ""),
        NSLocalizedString("InvTerm10.1", comment: ""),
        NSLocalizedString("InvTerm11.1", comment: ""),
        NSLocalizedString("InvTerm12.1", comment: ""),
        NSLocalizedString("InvTerm13.1", comment: ""),
        NSLocalizedString("InvTerm14.1", comment: ""),
        NSLocalizedString("InvTerm15.1", comment: ""),
        NSLocalizedString("InvTerm17.1", comment: ""),
        NSLocalizedString("InvTerm18.1", comment: ""),
        NSLocalizedString("InvTerm19.1", comment: ""),
        NSLocalizedString("InvTerm20.1", comment: ""),
        NSLocalizedString("InvTerm21.1", comment: ""),
        NSLocalizedString("InvTerm22.1", comment: ""),
        NSLocalizedString("InvTerm23.1", comment: ""),
        NSLocalizedString("InvTerm24.1", comment: ""),
        NSLocalizedString("InvTerm25.1", comment: ""),
        NSLocalizedString("InvTerm26.1", comment: ""),
        NSLocalizedString("InvTerm27.1", comment: ""),
        NSLocalizedString("InvTerm28.1", comment: ""),
        NSLocalizedString("InvTerm29.1", comment: ""),
        NSLocalizedString("InvTerm30.1", comment: ""),
        NSLocalizedString("InvTerm31.1", comment: ""),
        NSLocalizedString("InvTerm32.1", comment: ""),
        NSLocalizedString("InvTerm33.1", comment: ""),
        NSLocalizedString("InvTerm34.1", comment: ""),
        NSLocalizedString("InvTerm35.1", comment: ""),
    
    
    
    
    
    
    
    ]
    @State private var Title : [String] = [
        NSLocalizedString("InvTerm1", comment: ""),
        NSLocalizedString("InvTerm2", comment: ""),
        NSLocalizedString("InvTerm3", comment: ""),
        NSLocalizedString("InvTerm4", comment: ""),
        NSLocalizedString("InvTerm5", comment: ""),
        NSLocalizedString("InvTerm6", comment: ""),
        NSLocalizedString("InvTerm7", comment: ""),
        NSLocalizedString("InvTerm8", comment: ""),
        NSLocalizedString("InvTerm9", comment: ""),
        NSLocalizedString("InvTerm10", comment: ""),
        NSLocalizedString("InvTerm11", comment: ""),
        NSLocalizedString("InvTerm12", comment: ""),
        NSLocalizedString("InvTerm13", comment: ""),
        NSLocalizedString("InvTerm14", comment: ""),
        NSLocalizedString("InvTerm15", comment: ""),
        NSLocalizedString("InvTerm17", comment: ""),
        NSLocalizedString("InvTerm18", comment: ""),
        NSLocalizedString("InvTerm19", comment: ""),
        NSLocalizedString("InvTerm20", comment: ""),
        NSLocalizedString("InvTerm21", comment: ""),
        NSLocalizedString("InvTerm22", comment: ""),
        NSLocalizedString("InvTerm23", comment: ""),
        NSLocalizedString("InvTerm24", comment: ""),
        NSLocalizedString("InvTerm25", comment: ""),
        NSLocalizedString("InvTerm26", comment: ""),
        NSLocalizedString("InvTerm27", comment: ""),
        NSLocalizedString("InvTerm28", comment: ""),
        NSLocalizedString("InvTerm29", comment: ""),
        NSLocalizedString("InvTerm30", comment: ""),
        NSLocalizedString("InvTerm31", comment: ""),
        NSLocalizedString("InvTerm32", comment: ""),
        NSLocalizedString("InvTerm33", comment: ""),
        NSLocalizedString("InvTerm34", comment: ""),
        NSLocalizedString("InvTerm35", comment: ""),
 
        
    ]
    var body: some View {
        NavigationStack{
            ZStack{
                Color("Color_back")
                    .edgesIgnoringSafeArea(.all)
                ScrollView(showsIndicators: false) {
                    LazyVStack(spacing:15){
                        ForEach(0..<34){ index in
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
                    Rectangle()
                        .frame(height: 120)
                        .opacity(0)
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
