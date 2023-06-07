

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
                                    .cornerRadius(15)
                                
                                HStack{
                                    
                                    Text("calc1")
                                        .font(.system(size: 35,weight: .medium))
                                        .foregroundColor(Color("Color_font_2"))
                                        .multilineTextAlignment(.leading)
                                        .lineSpacing(0)
                                        .padding(.horizontal,15)
                                    Spacer()
                                }
                                
                            }
                            
                            
                            
                        }
                    }
                    
                    NavigationLink {SafeMoney_Screen()} label: {
                        
                        ZStack{
                            
                            Image("Calcul_2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15)
                            
                            HStack{
                                
                                Text("calc2")
                                    .font(.system(size: 35,weight: .medium))
                                    .foregroundColor(Color("Color_font"))
                                    .multilineTextAlignment(.leading)
                                    .lineSpacing(0)
                                    .padding(.horizontal,15)
                                Spacer()
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
