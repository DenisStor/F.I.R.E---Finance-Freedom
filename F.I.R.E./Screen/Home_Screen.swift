

import SwiftUI

struct Home_Screen: View {
    @AppStorage ("currentPage") var currentPage : Int = 1
  
    @AppStorage ("howMuch") var howmuch : Int = 0
    @State private var spacing : CGFloat = 20
    var body: some View {
        
        
        NavigationStack{
            ZStack{
                Color("Color_back")
                    .edgesIgnoringSafeArea(.all)
                ScrollView(showsIndicators: false){
                    
                    
                    
                    VStack(spacing: spacing){
                        
                        
                        RoundedRectangle(cornerRadius: 15)
                            .frame(height: 25)
                            .foregroundColor(Color("Color_font_1"))
                            .opacity(0)
                        NavigationLink { Advice_Screen()}
                    label: {
                        ZStack{
                            Image("butone")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15)
                            HStack {
                                VStack(alignment: .leading,spacing: 5){
                                    Text("Createfinancialreserves")
                                        .font(.system(size: 26,weight: .medium))
                                        .foregroundColor(Color("Color_font_2"))
                                    
                                    
                                    
                                    Text("Advice_home")
                                        .font(.system(size: 26,weight: .medium))
                                        .foregroundColor(Color(white: 1, opacity: 0.5))
                                        .overlay(
                                            Rectangle().frame(height: 2).offset(y: 4)
                                            , alignment: .bottom)
                                    
                                    
                                        .foregroundColor(Color(white: 1, opacity: 0.5))
                                 
                                }
                                Spacer()
                            }.multilineTextAlignment(.leading)
                                .padding(.horizontal,20)
                            
                        }
                    }
                        
                        
                        
                        
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .frame(height: 280)
                                .foregroundColor(Color("Color_wgt"))
                            HStack{
                            VStack(alignment: .leading,spacing: 5){
                                HStack {
                                    Text("F.I.R.E.1")
                                        .font(.system(size: 24,weight: .medium))
                                        .foregroundColor(Color("Color_font_2"))
                                    .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                                
                                Spacer()
                                    .frame(maxHeight: 20)
                                
                                NavigationLink {AboutFIRE_Screen()}label: {
                                    
                                    
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 14)
                                            .foregroundColor(Color("Color_font_1"))
                                        HStack{
                                        
                                            Text("More")
                                                .foregroundColor(Color("Color_font_2"))
                                                .font(.system(size: 20,weight: .medium))
                                                
                                            Image(systemName: "arrow.up.right")
                                                .font(.system(size: 13,weight: .medium))
                                                .foregroundColor(Color("Color_font_2"))
                                               
                                            //Spacer()
                                            
                                        }  .padding(10)
                                    }.frame(maxWidth: .infinity,maxHeight:55)
                                        
                                    }
                                }
                            }
                            .padding(.horizontal,20)
                            
                        }
                        
                        NavigationLink { Famous_Screen()}
                    label: {
                        ZStack{
                            
                            
                            Image("FamousPeople")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15)
                              
                            HStack {
                                VStack(alignment: .leading,spacing: 5){
                                    Text("Whatarethey")
                                        .font(.system(size: 26,weight: .medium))
                                        .foregroundColor(Color("Color_font_2"))
                                    
                                    
                                    
                                    Text("homeWord1")
                                        .font(.system(size: 22,weight: .medium))
                                        .foregroundColor(Color(white: 1, opacity: 0.5))
                                        .overlay(
                                            Rectangle().frame(height: 2).offset(y: 4)
                                            , alignment: .bottom)
                                    
                                    
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
                                .cornerRadius(15)
                                .aspectRatio(contentMode: .fill)
                            HStack {
                                VStack(alignment: .leading,spacing: 5){
                                    HStack{
                                        
                                            Text("testgram")
                                                
                                        
                                        Spacer()
//                                        HStack(spacing:0) {
//                                            Text("\(howmuch)")
//                                            Text("/8")
                                        
                                        
                                    //Spacer()
                                        
                                    }    .font(.system(size: 26,weight: .medium))
                                        .foregroundColor(Color("Color_font_2"))
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
                                .cornerRadius(15)
                              
                            HStack {
                                VStack(alignment: .leading,spacing: 5){
                                    Text("investagr1")
                                        .font(.system(size: 26,weight: .medium))
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
                            
                            RoundedRectangle(cornerRadius: 15)
                                
                                    .frame(height: 90)
                                    .foregroundColor(Color("Color_wgt"))
                            HStack {
                                VStack(alignment: .leading,spacing: 5){
                                    HStack{
                                        Text("tax")
                                            .font(.system(size: 26,weight: .medium))
                                            .foregroundColor(Color("Color_font_2"))
                                        
                     
                    
                                        Image(systemName: "arrow.up.right")
                                            .font(.system(size: 26, weight: .medium))
                                            .foregroundColor(Color("Color_font_2"))
                                        
                                    }
                                }
                                Spacer()
                            }.multilineTextAlignment(.leading)
                                .padding(.horizontal,20)
                            
                        }
                    }
                        
                        
                        
                        

                        
                    }
                    
                }.padding(.horizontal,15)
                    .refreshable {
                        if spacing == 120 {
                            
                        } else {
                            spacing = spacing + 15
                            if spacing == 20 {
                                
                            }
                            else {
                                Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { _ in
                                    spacing = spacing - 15
                                }
                            }
                        }
                    }.animation(.easeInOut, value: spacing)
                  
            }
        }
    }
}

struct Home_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Home_Screen()
    }
}
