

import SwiftUI

struct Calculator_Screen: View {
    
    
   
    var body: some View {
        NavigationStack{
            ZStack{
                Color("Color_back")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView(showsIndicators: false){
                    
                    
                    
                    VStack(spacing: 20){
                        NavigationLink { Procent_Screen()} label: {
                            
                            
                            ZStack{
                                
                                Image("Calcul_1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .overlay{
                                        HStack{
                                            VStack(alignment:.leading,spacing: 0){
                                                Spacer()
                                                
                                                
                                                Text("Сложные проценты")
                                                    .font(.system(size: 45,weight: .medium))
                                                    .foregroundColor(Color("Color_font_2"))
                                                    .multilineTextAlignment(.leading)
                                                    .lineSpacing(0)
                                                
                                                
                                            }.padding(20)
                                            
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
                                    .overlay{
                                        HStack{
                                            VStack(alignment:.leading,spacing: 0){
                                                Spacer()
                                                
                                                
                                                Text("Сколько можно потратить в день")
                                                    .font(.system(size: 38,weight: .medium))
                                                    .foregroundColor(Color("Color_font"))
                                                    .multilineTextAlignment(.leading)
                                                    .lineSpacing(0)
                                                
                                                
                                            }.padding(20)
                                            
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
}

struct Calculator_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Calculator_Screen()
    }
}
