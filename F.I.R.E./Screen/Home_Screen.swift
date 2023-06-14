

import SwiftUI

struct Home_Screen: View {
    @AppStorage ("currentPage") var currentPage : Int = 1
    
    
    @State private var spacing : CGFloat = 20
    @State private var imageforqwes : [String] = ["Image_test","Image_test","Image_test","Image_test"]
    @State private var textforqwes : [String] = ["Как распознать недооценённые акции?","234424","3t3","rbbrbr"]
   

   
    var body: some View {
        
        
        NavigationStack{
            GeometryReader { g in
                let screen = g.size
                ZStack{
                    Color("Color_back")
                        .edgesIgnoringSafeArea(.all)
                    ScrollView(showsIndicators: false){
                        
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                ForEach(0..<4) { index in
                                    ZStack{
                                        Image(imageforqwes[index])
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: screen.height / 3, height: screen.height / 3)
                                            .padding(.leading, index == 0 ? 15 : 10)
                                            .cornerRadius(30)
                                        VStack{
                                            Spacer()
                                            HStack{
                                                Text("\(textforqwes[index])")
                                                    .foregroundColor(Color("Color_font_2"))
                                                    .font(.system(size: 0.03 * screen.height ,weight: .medium))
                                                Spacer()
                                            }
                                        }.frame(width: screen.height / 3.7, height: screen.height / 4)
                                    }
                                }.onAppear(){
                                   
                                }
                            }
                        }
                        
                        VStack(spacing: spacing){
                            
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 30)
                                    .frame(height: 280)
                                    .foregroundColor(Color("Color_for_home"))
                                HStack{
                                    VStack(alignment: .leading,spacing: 15){
                                        HStack{
                                            Image("logoFire")
                                                .resizable()
                                                .frame(width: 0.25 * screen.height / 8, height: 0.4 * screen.height / 8 )
                                            Spacer()
                                        }
                                        HStack {
                                            Text("Движение F.I.R.E. расшифровывается как Financial Independence Retire Early")
                                                .font(.system(size: 25 ,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                                .multilineTextAlignment(.leading)
                                            Spacer()
                                        }
                                        
                                      
                                        
                                        NavigationLink {AboutFIRE_Screen()}label: {
                                            
                                            
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 14)
                                                    .foregroundColor(Color("Color_font_1"))
                                                HStack{
                                                    
                                                    Text("Mor")
                                                        .foregroundColor(Color("Color_font_2"))
                                                        .font(.system(size: 24 ,weight: .medium))
                                                    
                                                   
                                                    
                                                }  .padding(10)
                                            }.frame(maxWidth: .infinity,maxHeight:55)
                                            
                                        }
                                    }
                                }
                                .padding(.horizontal,20)
                                
                            }
                            
                            
                            NavigationLink { Advice_Screen()}
                        label: {
                            ZStack{
                                Image("butone")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(30)
                                HStack {
                                    VStack(alignment: .leading,spacing: 5){
                                        Text("Createfinancialreserves")
                                            .font(.system(size: 26,weight: .medium))
                                            .foregroundColor(Color("Color_font_2"))
                                        
                                        
                                        
                                        Text("Advice_home")
                                            .font(.system(size: 26,weight: .medium))
                                            .foregroundColor(Color(white: 1, opacity: 0.5))
                                            .overlay(
                                                Rectangle().frame(height: 2)
                                                , alignment: .bottom)
                                        
                                        
                                            .foregroundColor(Color(white: 1, opacity: 0.5))
                                        
                                    }
                                    Spacer()
                                }.multilineTextAlignment(.leading)
                                    .padding(.horizontal,20)
                                
                            }
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
                                            .font(.system(size: 26,weight: .medium))
                                            .foregroundColor(Color("Color_font_2"))
                                        
                                        
                                        
                                        Text("homeWord1")
                                        
                                            .font(.system(size: 26,weight: .medium))
                                            .foregroundColor(Color(white: 1, opacity: 0.5))
                                            .overlay(
                                                Rectangle().frame(height: 2).offset(y: 4)
                                                , alignment: .bottom)
                                        
                                        
                                            .foregroundColor(Color(white: 1, opacity: 0.5))
                                        
                                        
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
                                                Text("Какие активы\nвам подойдут")
                                                    .foregroundColor(Color("Color_font"))
                                                .font(.system(size: 30 ,weight: .medium))
                                                Spacer()
                                            }
                                            HStack {
                                                Text("homeWord1")
                                                
                                                    .font(.system(size: 20 ,weight: .medium))
                                                    .foregroundColor(Color("Color_font"))
                                                    .opacity(0.5)
                                                    .overlay(
                                                        Rectangle().frame(height: 2).offset(y: 4)
                                                            .foregroundColor(Color("Color_font"))
                                                            .opacity(0.5)
                                                    , alignment: .bottom)
                                                Spacer()
                                            }
                                            
                                            
                                                
                                            
                                            
                                               
                                            //Spacer()
                                            //                                        HStack(spacing:0) {
                                            //                                            Text("\(howmuch)")
                                            //                                            Text("/8")
                                            
                                            
                                            //Spacer()
                                            
                                          //.font(.system(size: 26,weight: .medium))
                                           // .foregroundColor(Color("Color_font_2"))
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
                                
                                Image("imageforhome")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                HStack {
                                    VStack(alignment: .leading,spacing: 5){
                                        HStack{
                                            Text("tax")
                                                .font(.system(size: 0.04 * screen.height ,weight: .medium))
                                                .foregroundColor(Color("Color_font_1"))
                                            
                                            
                                            
                                            
                                            
                                        }
                                    }
                                    Spacer()
                                }.multilineTextAlignment(.leading)
                                    .padding(.horizontal,20)
                                
                            }
                        }
                            
                            
                            
                            
                            
                            
                            
                        }
                        .padding(.horizontal,15)
                        .padding(.top,spacing)
                    }
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
}

struct Home_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Home_Screen()
    }
}
