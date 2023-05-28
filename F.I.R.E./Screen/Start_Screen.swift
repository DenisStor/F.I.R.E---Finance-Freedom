

import SwiftUI

struct Start_Screen: View {
    
    @AppStorage ("currentPage") var currentPage : Int = 1
    
    var body: some View {
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            VStack(spacing:0){
                VStack{
                    Image("Start_Image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                }
                
                ZStack{
                    VStack(alignment: .leading,spacing: 15){
                        Text("F.I.R.E.")
                            .font(.system(size: 87,weight: .medium))
                            .foregroundColor(Color("Color_font_1"))
                        Text("F.I.R.E.1")
                            .font(.system(size: 22,weight: .medium))
                            .foregroundColor(Color("Color_font"))
                        HStack{
                            Text("menuStart")
                                .font(.system(size: 28,weight: .medium))
                                .overlay(
                                    Rectangle().frame(height: 2).offset(y: 4)
                                    , alignment: .bottom)
                            Image("Start_Image_1")
                                .renderingMode(.template)
                        }.foregroundColor(Color("Color_font"))
                            .onTapGesture {
                            currentPage = 2
                            }
                       
                    }.padding(.horizontal,10)
                        .padding(.bottom, 10)
                }
                
                
            }
            
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
