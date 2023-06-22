

import SwiftUI

struct Calculator_Screen: View {
    
    
   
    var body: some View {
        NavigationStack{
            ZStack{
                Color("Color_back")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView(showsIndicators: false){
                    
                    
                    
                    VStack{
                        NavigationLink { Procent_Screen()} label: {
                            
                            
                            ZStack{
                                
                                Image("Calcul_1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(30)
                                VStack(spacing:10) {
                                    HStack{
                                        
                                        Text("calc1")
                                            .font(.system(size: 30,weight: .medium))
                                            .foregroundColor(Color("Color_font_1"))
                                            .multilineTextAlignment(.leading)
                                            .lineSpacing(0)
                                            .padding(.horizontal,20)
                                        Spacer()
                                    }
                                    HStack{
                                        
                                        Text("Jor1")
                                            .font(.system(size: 15,weight: .medium))
                                            .foregroundColor(Color("Color_font_3"))
                                            
                                            .multilineTextAlignment(.leading)
                                            .lineSpacing(0)
                                            .padding(.horizontal,20)
                                        Spacer()
                                    }
                                }
                                
                            }
                            
                            
                            
                        }
                    }
                    
                    NavigationLink {SafeMoney_Screen()} label: {
                        
                        ZStack{
                            
                            Image("Calcul_2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(30)
                            VStack(spacing:5){
                                HStack{
                                    
                                    Text("Wvn")
                                        .font(.system(size: 30,weight: .medium))
                                        .foregroundColor(Color("Color_font_2"))
                                        .multilineTextAlignment(.leading)
                                        .lineSpacing(0)
                                        .padding(.horizontal,20)
                                    Spacer()
                                }.padding(.top,10)
                                HStack{
                                    
                                    Text("rfv")
                                        .font(.system(size: 15,weight: .medium))
                                        .foregroundColor(Color("Color_font_2"))
                                        .opacity(0.5)
                                        .multilineTextAlignment(.leading)
                                        .lineSpacing(0)
                                        .padding(.horizontal,20)
                                    Spacer()
                                }
                                
                            }
                        }
                    }
                    
                    
                }.padding(.horizontal,15)
                
            }
                }
            }
        }
    


struct Calculator_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Calculator_Screen()
    }
}
