

import SwiftUI

struct Settings_screen: View {
    
    @AppStorage ("Start") var Start : Double = 0
    @AppStorage ("InMonth") var InMonth : Double = 0
    @AppStorage ("Year") var Year : Double = 1
    @AppStorage ("Rate") var Rate : Int = 4
    @AppStorage("theme") var selectedTheme: String = "system"
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack{
            
            ZStack {
                Color("Color_back")
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading){
                    
                    
                    
                    
                    
                /* ZStack{
                 RoundedRectangle(cornerRadius: 22)
                     .foregroundColor(Color("Color_button"))
                     .frame(height: 64)
                 HStack {
                     Text("set2")
                         .font(.system(size: 24.5, weight: .medium))
                         
                     Spacer()
                     Picker("Тема", selection: $selectedTheme) {
                         Text("themeSettings3").tag("light")
                         Text("themeSettings2").tag("dark")
                         Text("themeSettings").tag("system")
                     }
                     
                     
                     
                 }.padding(.horizontal,20)
             }
                 */
                    
                    
                    
                    
                   // Spacer()
                    
                 //   Text("set4")
                     //   .font(.system(size: 24.5, weight: .medium))
                     //   .foregroundColor(Color("Color_font"))
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 22)
                            .foregroundColor(Color("Color_font_1"))
                            .frame(height: 150)
                        HStack {
                            Text("set5")
                            
                                .font(.system(size: 40, weight: .medium))
                            
                            Image("Start_Image_1")
                                .renderingMode(.template)
                            Spacer()
                        } .padding(20)
                            .foregroundColor(Color("Color_font_2"))
                        
                        
                    }
                    .onTapGesture {
                        
                        Start = 0
                        Year = 1
                        InMonth = 0
                        Rate = 4
                    }
                    Spacer()
                        .frame(maxHeight: 25)
                }
                .padding(.horizontal, 15)
                
                .navigationTitle("setLang")
                .navigationBarTitleDisplayMode(.inline)
                
                
                
                
                
                
                
                
                
                
            }
            
        }
       
    }
  
}
    struct Settings_screen_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .previewDevice("iPhone SE (3rd generation)")
            ContentView()
                .previewDevice("iPhone 14 Pro Max")
        }
    }


