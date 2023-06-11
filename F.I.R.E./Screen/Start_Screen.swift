

import SwiftUI

struct Start_Screen: View {
    
    @AppStorage ("currentPage") var currentPage : Int = 1
    
    var body: some View {
        
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("Start_Image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top,100)
            }
            VStack(spacing:10){
                    HStack{
                        Image("logoFire")
                        Spacer()
                    }
                    HStack{
                        Text("Что такое\nFIRE?")
                            .font(.system(size: 45, weight: .medium)).foregroundColor(Color("Color_font_1"))
                        Spacer()
                        
                    }
                    Spacer()
                   
                    HStack{
                        Text("FIRE это мощное приложение, разработанное для тех, кто стремится достичь финансовой независимости и свободы.")
                            .font(.system(size: 22, weight: .medium)).foregroundColor(Color("Color_font"))
                        Spacer()
                    }
                    HStack{
                        Text("Продолжить").font(.system(size: 21.2, weight: .medium))
                            .overlay(
                                Rectangle().frame(height: 2).offset(y: 4)
                                , alignment: .bottom)
                        
                        Image("Start_Image_1")
                            .renderingMode(.template)
                        Spacer()
                    }.font(.system(size: 22, weight: .medium)).foregroundColor(Color("Color_font_1"))
                    .onTapGesture {
                    currentPage = 2
                    }
                    
                } .padding(15)
                
                
                
                
            }
            
            
            
        }
    }
    

struct Start_Screen_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone SE (3rd generation)")
        ContentView()
            .previewDevice("iPhone 14 Pro Max")
    }
}
