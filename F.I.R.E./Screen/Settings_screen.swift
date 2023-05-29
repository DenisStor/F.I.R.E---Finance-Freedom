

import SwiftUI

struct Settings_screen: View {
    
    @AppStorage ("Start") var Start : Double = 0
    @AppStorage ("InMonth") var InMonth : Double = 0
    @AppStorage ("Year") var Year : Double = 1
    @AppStorage ("Rate") var Rate : Int = 4
    @AppStorage ("earnMoney") var earnMoney : String = "" // строка зарабаток
    @AppStorage ("spendMoney") var spendMoney : String = "" // строка трат
    @AppStorage("theme") var selectedTheme: String = "system"
    @Environment(\.colorScheme) var colorScheme
    
    @State private var anim = false
    @State private var anim1 = false
    var body: some View {
        NavigationStack{
            
            ZStack {
                Color("Color_back")
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading){
                    
                    
                    
                    
                    
                    Text("Почта для предложений и идей")
                        .font(.system(size:  25, weight: .medium))
                      .foregroundColor(Color("Color_font"))
                      .padding(.top,4)
                      .onTapGesture {
                          anim1.toggle()
                          Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { _ in
                              anim1 = false
                          }
                      }
                    Text("developerteam@test.ru")
                        .font(.system(size: anim1 ? 40 : 25, weight: .medium))
                      .foregroundColor(Color("Color_font_1"))
                    
                    
                    
                   Spacer()
                    
                    Text("set4")
                       .font(.system(size: 24.5, weight: .medium))
                      .foregroundColor(Color("Color_font"))
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 22)
                           
                            .frame(height: anim ? 70 : 60)
                            .foregroundColor(Color(anim ? "Color_font_3" : "Color_font_1"))
                           
                        HStack {
                            Text("set5")
                            
                                .font(.system(size: 30, weight: .medium))
                            
                            Image("Start_Image_1")
                                .renderingMode(.template)
                            Spacer()
                        } .padding(20)
                            .foregroundColor(Color("Color_font_2"))
                        
                        
                    }
                    .onTapGesture {
                        let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                         impactHeavy.impactOccurred()
                        Start = 0
                        Year = 1
                        InMonth = 0
                        Rate = 4
                        earnMoney = ""
                        spendMoney = ""
                        anim.toggle()
                        Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { _ in
                            anim = false
                        }
                    }
                    Spacer()
                        .frame(maxHeight: 25)
                }
                .padding(.horizontal, 15)
                
                .navigationTitle("setLang")
                .navigationBarTitleDisplayMode(.inline)
                
                
                
                
                
                
                
                
                
                
            }
            
        }
        .animation(.spring(), value: anim)
        .animation(.spring(), value: anim1)
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


