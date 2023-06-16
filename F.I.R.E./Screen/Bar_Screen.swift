

import SwiftUI

struct Bar_Screen: View {
    @State private var PageBar : Int = 0
    var body: some View {
        GeometryReader { g in
            let screen = g.size
            NavigationStack{
                ZStack{
                    if PageBar == 0 {
                        Home_Screen()
                    }
                    if PageBar == 1 {
                        Calculator_Screen()
                    }
                    if PageBar == 2 {
                      Termis_Screen()
                    }
                    if PageBar == 3 {
                        Settings_screen()
                    }
                    VStack (spacing:0) {
                        Spacer()
                        ZStack{
                            RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(Color("Color_button"))
                               
                                
                                
                                .frame(height: screen.height/9)
                                .shadow(color: Color("Color_shadow"), radius: 20)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 30)
                                        .stroke(Color.black, lineWidth: 0.2)
                                }
                            HStack(spacing:40){
                                Image(systemName: "house")
                                    .font(.system(size:PageBar == 0 ? 30 : 25))
                                    .foregroundColor(PageBar == 0 ? Color("Color_font_1") : Color("Color_bar"))
                                    .onTapGesture {
                                        PageBar = 0
                                        let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                                        impactHeavy.impactOccurred()
                                    }
                                
                                Image(systemName: "function")
                                    .font(.system(size:PageBar == 1 ? 30 : 25))
                                    .foregroundColor(PageBar == 1 ? Color("Color_font_1") : Color("Color_bar"))
                                    .onTapGesture {
                                        PageBar = 1
                                        let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                                        impactHeavy.impactOccurred()
                                    }
                                Image(systemName: PageBar == 2 ? "book" : "book.closed")
                                    .font(.system(size:PageBar == 2 ? 30 : 25))
                                    .foregroundColor(PageBar == 2 ? Color("Color_font_1") : Color("Color_bar"))
                                    .onTapGesture {
                                        PageBar = 2
                                        let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                                        impactHeavy.impactOccurred()
                                    }
                                Image(systemName: "gear")
                                    .font(.system(size:PageBar == 3 ? 30 : 25))
                                    .foregroundColor(PageBar == 3 ? Color("Color_font_1") : Color("Color_bar"))
                                    .onTapGesture {
                                        PageBar = 3
                                        if PageBar == 3 {
                                            
                                        } else {
                                            
                                            
                                            let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                                            impactHeavy.impactOccurred()
                                        }
                                    }
                            }.animation(.spring(), value: PageBar)
                        }
                    }.padding(.horizontal,50)
                        .padding(.bottom,15)
                        .ignoresSafeArea()
                    
                    
                    
                }
            }.tint(.red)
        }
    }
}

struct Home_Screen__Previews: PreviewProvider {
    static var previews: some View {
        Bar_Screen()
    }
}
