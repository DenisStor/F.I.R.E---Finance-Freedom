

import SwiftUI

struct Home_Screen: View {
    @AppStorage ("currentPage") var currentPage : Int = 1
    @State private var test : Bool = false
    var body: some View {
        
        
        NavigationStack{
            ZStack{
                Color("Color_back")
                    .edgesIgnoringSafeArea(.all)
                ScrollView{
                    
                    
                    
                    LazyVStack(spacing: 20){
                        
                        
                        NavigationLink { Advice_Screen()}
                    label: {
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 30)
                                .frame(height: 150)
                                .foregroundColor(Color("Color_font_1"))
                            HStack {
                                VStack(alignment: .leading,spacing: 5){
                                    Text("Создавайте финансовые резервы")
                                        .font(.system(size: 26,weight: .medium))
                                        .foregroundColor(Color("Color_font_2"))
                                    
                                    
                                    
                                    Text("Открыть советы")
                                        .font(.system(size: 24,weight: .medium))
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
                            RoundedRectangle(cornerRadius: 30)
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
                                            Text("Подробнее")
                                                .foregroundColor(Color("Color_font_2"))
                                                .font(.system(size: 24,weight: .medium))
                                            
                                            
                                        }
                                    }.frame(maxWidth: .infinity,maxHeight:55)
                                        
                                    }
                                }
                            }
                            .padding(.horizontal,20)
                            
                        }
                        
                        
                        
                    }
                    
                    
                    
                    
                }.padding(.horizontal,15)
                    .navigationTitle("main")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct Home_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Home_Screen()
    }
}
