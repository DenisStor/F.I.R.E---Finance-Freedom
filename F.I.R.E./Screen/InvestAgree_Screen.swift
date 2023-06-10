//
//  InvestAgree.swift
//  F.I.R.E.
//
//  Created by Никита Малыхин on 07.06.2023.
//

import SwiftUI

struct InvestAgree_Screen: View {
    
    @State private var name : [String] = [
    NSLocalizedString("stockmenu", comment: ""),
    NSLocalizedString("obligimenu", comment: ""),
    NSLocalizedString("cryptomenu", comment: ""),
    NSLocalizedString("nedviga", comment: ""),
    ]
    

    @State private var IsOn : Int = 0
    @State private var clr : [Bool] = [true , false , false , false]
  
    
    var body: some View {
        ZStack {
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false){
                VStack (alignment: .leading, spacing: 30) {
                    HStack{
                        Text("Investagree1")
                            .font(.system(size: 40, weight: .semibold))
                            .foregroundColor(Color("Color_font_1"))
                        Spacer()
                    }.padding(.horizontal,15)
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach (0...3, id: \.self) { index in
                                Text(name[index])
                                    .padding(20)
                                    .font(.system(size: 18, weight: .medium))
                                    .foregroundColor(clr[index] ? Color("Color_font_2") : Color("Color_font"))
                                    .background(
                                        RoundedRectangle(cornerRadius: 15)
                                            .foregroundColor(clr[index] ? Color("Color_font_1") : Color("Color_button") )
                                        
                                    )
                                    .padding(.leading,index == 0 ? 15 : 5)
                                    .onTapGesture {
                                        if IsOn == index {
                                            print("Test")
                                        }
                                        else {
                                            IsOn = index
                                            
                                            clr[0] = false
                                            clr[1] = false
                                            clr[2] = false
                                            clr[3] = false
                                            clr[IsOn] = true
                                            
                                            
                                            
                                        }
                                        
                                        
                                        
                                    }
                                    }
                            }
                            }
                    //1 текст
                    VStack(spacing:15) {
                        if IsOn == 0 {
                            
                            HStack{
                                Text("Promotion1")
                                    .font(.system(size: 23, weight: .semibold))
                                Spacer()
                            }
                            
                            HStack{
                           
                                Text("ConservativeStep1")
                                    .font(.system(size: 40, weight: .semibold))
                                    .foregroundColor(Color("Color_font_1"))
                                    .padding(.top, 10)
                                Spacer()
                                    
                                
                            }
                            HStack{
                           
                                Text("ConservativeStep1.1")
                                    .font(.system(size: 23, weight: .medium))
                                    .padding(.bottom,10)
                                Spacer()
                                
                            }
                  
                            HStack{
                           
                                Text("ConservativeStep2")
                                    .font(.system(size: 40, weight: .semibold))
                                    .foregroundColor(Color("Color_font_1"))
                                    .padding(.top, 10)
                                Spacer()
                                    
                                
                            }
                            
                            HStack{
                           
                                Text("ConservativeStep2.1")
                                    .font(.system(size: 23, weight: .medium))
                                    .padding(.bottom,10)
                                Spacer()
                                
                            }
                            
                            HStack{
                           
                                Text("Step3")
                                    .font(.system(size: 40, weight: .semibold))
                                    .foregroundColor(Color("Color_font_1"))
                                    .padding(.top, 10)
                                Spacer()
                                    
                                
                            }
                            
                            HStack{
                           
                                Text("AggressiveStep2.2")
                                    .font(.system(size: 23, weight: .medium))
                                    .padding(.bottom,10)
                                Spacer()
                                
                            }
                            
                           // Test_View(totalQwestion: 10, Text_info: [], TrueQwestion: [])
                        }
                        
                
                        
                        
                        if IsOn == 1 {
                            
                            HStack{
                                Text("Bonds2")
                                    .font(.system(size: 23, weight: .semibold))
                                Spacer()
                            }
                            
                            HStack{
                           
                                Text("Step1")
                                    .font(.system(size: 40, weight: .semibold))
                                    .foregroundColor(Color("Color_font_1"))
                                    .padding(.top, 10)
                                Spacer()
                                    
                                
                            }
                            HStack{
                           
                                Text("Step1.1")
                                    .font(.system(size: 23, weight: .medium))
                                    .padding(.bottom,10)
                                Spacer()
                                
                            }
                            
                            HStack{
                                VStack (alignment: .leading) {
                                    Text("Creditratings1")
                                        .font(.system(size: 16.8, weight:.medium))
                                        .foregroundColor(Color("Color_font_3"))
                                    
                                    Image("creditAa")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    Text("Creditratings2")
                                        .font(.system(size: 16.8, weight:.medium))
                                        .foregroundColor(Color("Color_font_3"))
                                }
                                Spacer()
                            }
                            HStack{
                           
                                Text("Step2")
                                    .font(.system(size: 40, weight: .semibold))
                                    .foregroundColor(Color("Color_font_1"))
                                    .padding(.top, 10)
                                Spacer()
                                    
                                
                            }
                            
                            HStack{
                           
                                Text("Step2.1")
                                    .font(.system(size: 23, weight: .medium))
                                    .padding(.bottom,10)
                                Spacer()
                                
                            }
                            
                            HStack{
                           
                                Text("Step3")
                                    .font(.system(size: 40, weight: .semibold))
                                    .foregroundColor(Color("Color_font_1"))
                                    .padding(.top, 10)
                                Spacer()
                                    
                                
                            }
                            
                            HStack{
                           
                                Text("Step3.1")
                                    .font(.system(size: 23, weight: .medium))
                                    .padding(.bottom,10)
                                Spacer()
                                
                            }
                            
                            HStack{
                           
                                Text("Step3.2")
                                    .font(.system(size: 23, weight: .medium))
                                    .padding(.bottom,10)
                                Spacer()
                                
                            }
                            
                        }
                        if IsOn == 2 {
                            HStack{
                                Text("Cryptocurrency2")
                                    .font(.system(size: 23, weight: .semibold))
                                Spacer()
                            }
                            
                            HStack{
                           
                                Text("CryptoStep1")
                                    .font(.system(size: 40, weight: .semibold))
                                    .foregroundColor(Color("Color_font_1"))
                                    .padding(.top, 10)
                                Spacer()
                                    
                                
                            }
                            HStack{
                           
                                Text("CryptoStep1.1")
                                    .font(.system(size: 23, weight: .medium))
                                    .padding(.bottom,10)
                                Spacer()
                                
                            }
                            
                 
                            HStack{
                           
                                Text("CryptoStep2")
                                    .font(.system(size: 40, weight: .semibold))
                                    .foregroundColor(Color("Color_font_1"))
                                    .padding(.top, 10)
                                Spacer()
                                    
                                
                            }
                            
                            HStack{
                           
                                Text("CryptoStep2.1")
                                    .font(.system(size: 23, weight: .medium))
                                    .padding(.bottom,10)
                                Spacer()
                                
                            }
                            
                            HStack{
                           
                                Text("CryptoObjectivesInvestments1")
                                    .font(.system(size: 30, weight: .semibold))
                                    .foregroundColor(Color("Color_font_3"))
                                    .padding(.top, 10)
                                Spacer()
                                    
                                
                            }
                            
                            HStack{
                           
                                Text("CryptoObjectivesInvestments2")
                                    .font(.system(size: 23, weight: .medium))
                                    .padding(.bottom,10)
                                Spacer()
                                
                            }
                            
                  
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        if IsOn == 3 {
                            HStack{
                                Text("EstateInvestments1")
                                    .font(.system(size: 23, weight: .semibold))
                                Spacer()
                            }
                            
                            HStack{
                           
                                Text("EstateStep1")
                                    .font(.system(size: 40, weight: .semibold))
                                    .foregroundColor(Color("Color_font_1"))
                                    .padding(.top, 10)
                                Spacer()
                                    
                                
                            }
                            HStack{
                           
                                Text("EstateStep1.1")
                                    .font(.system(size: 23, weight: .medium))
                                    .padding(.bottom,10)
                                Spacer()
                                
                            }
                            
                 
                            HStack{
                           
                                Text("EstateStep2")
                                    .font(.system(size: 40, weight: .semibold))
                                    .foregroundColor(Color("Color_font_1"))
                                    .padding(.top, 10)
                                Spacer()
                                    
                                
                            }
                            
                            HStack{
                           
                                Text("EstateStep2.1")
                                    .font(.system(size: 23, weight: .medium))
                                    .padding(.bottom,10)
                                Spacer()
                                
                            }
                            
                            HStack{
                           
                                Text("EstateInvestments1.2")
                                    .font(.system(size: 30, weight: .semibold))
                                    .foregroundColor(Color("Color_font_3"))
                                    .padding(.top, 10)
                                Spacer()
                                    
                                
                            }
                            
                            HStack{
                           
                                Text("EstateAdvice1")
                                    .font(.system(size: 23, weight: .medium))
                                    .padding(.bottom,10)
                                Spacer()
                                
                            }
                            

                        }
                    }.padding(.horizontal,15)
                        .padding(.top,20)
                }
            }
        }
    }
    struct InvestAgree_Screen_Previews: PreviewProvider {
        static var previews: some View {
            InvestAgree_Screen()
        }
    }
}
