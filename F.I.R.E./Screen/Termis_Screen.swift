
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
    @AppStorage ("test1")  var test1 : Int = 0
    @AppStorage ("test_1")  var test_1 : Int = 0
    @AppStorage ("test2")  var test2 : Int = 0
    @AppStorage ("test_2")  var test_2 : Int = 0
    @AppStorage ("test3")  var test3 : Int = 0
    @AppStorage ("test_3")  var test_3 : Int = 0
    @State private var spacing : CGFloat = 20
    var body: some View {
        
        NavigationStack{
            ZStack {
                Color("Color_back")
                    .edgesIgnoringSafeArea(.all)
                ScrollView(showsIndicators: false){
                    
                    VStack(spacing: spacing) {
                        
                        NavigationLink {
                            Medalki_Screen()
                        } label: {
                            ZStack{
                                
                                Image("testImage")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(30)
                                VStack{
                                    HStack{
                                        Text("KW1")
                                            .font(.system(size: 23 ,weight: .medium))
                                            .foregroundColor(Color("Color_font"))
                                        
                                        Spacer()
                                        
                                        
                                        
                                    }
                                    HStack{
                                        Text("\(test1+test2+test3)")
                                            .font(.system(size: 20 ,weight: .medium))
                                            .foregroundColor(Color("Color_font_3"))
                                        +
                                        Text("vt1")
                                            .font(.system(size: 20 ,weight: .medium))
                                            .foregroundColor(Color("Color_font_3"))
                                        +
                                        Text("3 ")
                                            .font(.system(size: 20 ,weight: .medium))
                                            .foregroundColor(Color("Color_font_3"))
                                        +
                                        Text("bg")
                                            .font(.system(size: 20 ,weight: .medium))
                                            .foregroundColor(Color("Color_font_3"))
                                        
                                        Spacer()
                                    }
                                    HStack{
                                        
                                        bar_progress(progress:Float(test1+test2+test3), total: Float(3))
                                            .frame(alignment: .leading)
                                        
                                        
                                    }.frame(height: 12)
                                        .padding(.trailing,150)
                                }.padding(.horizontal,20)
                            }
                        }
                        
                        
                        
                        ZStack{
                            
                            
                            VStack(alignment: .leading,spacing: 20){
                                VStack(spacing:5) {
                                    HStack{
                                        Image("logoFire")
                                            .renderingMode(.template)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .foregroundColor(Color("Color_font_1"))
                                            .frame(height: 50)
                                        
                                        Spacer()
                                        
                                    }
                                    HStack {
                                        Text("sS").foregroundColor(Color("Color_font")) +
                                        Text(" Financial Independence Retire Early").foregroundColor(Color("Color_font_1"))
                                        
                                        Spacer()
                                    } .font(.system(size: 23 ,weight: .medium))
                                    
                                        .multilineTextAlignment(.leading)
                                }
                                
                                
                                NavigationLink {
                                    AboutFIRE_Screen()
                                    
                                }
                            label: {
                                
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 30)
                                        .foregroundColor(Color("Color_font_1"))
                                    
                                    HStack{
                                        
                                        Text("More")
                                            .foregroundColor(Color("Color_font_2"))
                                            .font(.system(size: 20 ,weight: .medium))
                                        
                                        
                                        
                                    }  .padding(.vertical,15)
                                }.frame(maxWidth: .infinity)
                                
                            }
                            }
                            .padding(.horizontal,20)
                            .padding(.vertical,20)
                            .background (
                                RoundedRectangle(cornerRadius: 30)
                                
                                    .foregroundColor(Color("Color_for_home"))
                            )
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        NavigationLink { Famous_Screen()}
                    label: {
                        ZStack{
                            
                            
                            Image("FamousPeople")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(30)
                            
                            HStack {
                                VStack(alignment: .leading,spacing: 5){
                                    Text("Whatarethey")
                                        .font(.system(size: 23,weight: .medium))
                                        .foregroundColor(Color("Color_font_2"))
                                    
                                    
                                    
                                    Text("homeWord1")
                                    
                                        .font(.system(size: 20,weight: .medium))
                                        .foregroundColor(Color(white: 1, opacity: 0.5))
                                    
                                    
                                }
                                Spacer()
                            }.multilineTextAlignment(.leading)
                                .padding(.horizontal,20)
                            
                        }
                    }
                        
                        NavigationLink { Test_Screen()}
                    label: {
                        ZStack{
                            
                            Image("buttest")
                                .resizable()
                                .cornerRadius(30)
                                .aspectRatio(contentMode: .fill)
                            HStack {
                                VStack(alignment: .leading,spacing: 5){
                                    
                                    
                                    HStack {
                                        Text("RWW")
                                            .foregroundColor(Color("Color_font"))
                                            .font(.system(size: 23 ,weight: .medium))
                                        // Spacer()
                                    }
                                    HStack {
                                        Text("FW")
                                        
                                            .font(.system(size: 20 ,weight: .medium))
                                            .foregroundColor(Color("Color_font"))
                                            .opacity(0.5)
                                        
                                        Spacer()
                                    }
                                }
                                Spacer()
                            }.multilineTextAlignment(.leading)
                                .padding(.horizontal,20)
                            
                        }
                    }
                        
                        
                        
                        
                        NavigationLink { InvestAgree_Screen()}
                    label: {
                        ZStack{
                            
                            
                            Image("investagr")
                                .resizable()
                                .cornerRadius(30)
                            
                            HStack {
                                VStack(alignment: .leading,spacing: 5){
                                    Text("investagr1")
                                        .font(.system(size: 23,weight: .medium))
                                        .foregroundColor(Color("Color_font_2"))
                                    
                                    
                                    
                                    
                                }
                                Spacer()
                            }.multilineTextAlignment(.leading)
                                .padding(.horizontal,20)
                            
                        }
                    }
                        
                        
                        
                        
                        NavigationLink { Tax_Screen()}
                    label: {
                        ZStack{
                            
                            Image("imageforhome")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            HStack {
                                VStack(alignment: .leading,spacing: 5){
                                    HStack{
                                        Text("tax")
                                            .font(.system(size: 23 ,weight: .medium))
                                            .foregroundColor(Color("Color_font_1"))
                                        
                                        
                                        
                                        
                                        
                                    }
                                }
                                Spacer()
                            }.multilineTextAlignment(.leading)
                                .padding(.horizontal,20)
                            
                        }
                    }
                        
                        NavigationLink { Termin_Screen()}
                    label: {
                        ZStack{
                            
                            Image("slovar")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            HStack {
                                VStack(alignment: .leading,spacing: 5){
                                    HStack{
                                        Text("slovartext")
                                            .font(.system(size: 23 ,weight: .medium))
                                            .foregroundColor(Color("Color_font_2"))
                                        
                                        
                                        
                                        
                                        
                                    }
                                }
                                Spacer()
                            }.multilineTextAlignment(.leading)
                                .padding(.horizontal,20)
                            
                        }
                    }
                        
                        
                        
                    }.padding(.horizontal,15)
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(height: 100)
                    
                    
                }
                
            }
        }
    }
    
    struct Termis_Screen_Previews: PreviewProvider {
        static var previews: some View {
            Termis_Screen()
        }
    }
}
