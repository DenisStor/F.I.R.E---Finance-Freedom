

import SwiftUI

struct Settings_screen: View {
    
    @AppStorage ("Start") var Start : Double = 0
    @AppStorage ("InMonth") var InMonth : Double = 0
    @AppStorage ("Year") var Year : Double = 1
    @AppStorage ("Rate") var Rate : Int = 4
    @AppStorage ("earnMoney") var earnMoney : String = "" // строка зарабаток
    @AppStorage ("spendMoney") var spendMoney : String = "" // строка трат
    @AppStorage ("howMuch") var howmuch : Int = 0
   
    @State private var animation : Bool = false
    @State private var alert1 : Bool = false
    var body: some View {
        ZStack{
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading,spacing: 20){
                HStack {
                    Text("homeWord2")
                        .font(.system(size: 40,weight: .medium))
                        .foregroundColor(Color("Color_font"))
                    Spacer()
                }
                Divider()
                HStack{
                    VStack(alignment: .leading){
                        Text("Denis Storozhev")
                            .font(.system(size: 25,weight: .medium))
                            .foregroundColor(Color("Color_font"))
                        Text("lead developer")
                            .font(.system(size: 17,weight: .medium))
                            .opacity(0.6)
                            .foregroundColor(Color("Color_font"))
                    }.multilineTextAlignment(.leading)
                    Spacer()
                }
                HStack{
                    VStack(alignment: .leading){
                        Text("Nikita Malykhin")
                            .font(.system(size: 25,weight: .medium))
                            .foregroundColor(Color("Color_font"))
                        Text("chief UI/UX designer")
                            .font(.system(size: 17,weight: .medium))
                            .opacity(0.6)
                            .foregroundColor(Color("Color_font"))
                    }.multilineTextAlignment(.leading)
                    Spacer()
                }
                Divider()
                HStack{
                    VStack(alignment: .leading){
                        Text("Outsourcing")
                            .font(.system(size: 14,weight: .medium))
                            .foregroundColor(Color("Color_font"))
                        Text("Nikita Vasilevsky")
                            .font(.system(size: 20,weight: .medium))
                            .foregroundColor(Color("Color_font"))
                        Text("text editor")
                            .font(.system(size: 14,weight: .medium))
                            .foregroundColor(Color("Color_font"))
                        
                    }.multilineTextAlignment(.leading)
                        .opacity(0.6)
                    Spacer()
                }
                Spacer()
                VStack(spacing: 10) {
                    HStack{
                        Text("mail1e")
                            .font(.system(size: 20,weight: .medium))
                            .foregroundColor(Color("Color_font"))
                        Spacer()
                    }
                    HStack{
                        Text("firefeedback@mail.ru")
                            .font(.system(size: 20,weight: .medium))
                            .tint(Color("Color_font"))
                            .overlay(
                                Rectangle().frame(height: 2).offset(y: 4)
                                , alignment: .bottom)
                        
                        Spacer()
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(height: 60)
                        .padding(.vertical,20)
                        .foregroundColor(Color("Color_font_1"))
                        .padding(.horizontal,animation ? 20 : 0)
                       
                    Text("set5")
                        .font(.system(size: 25,weight: .medium))
                        .foregroundColor(Color("Color_font_2"))
                        
                }.onTapGesture {
                    if animation == true {
                        
                    } else {
                        let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                        impactHeavy.impactOccurred()
                       
                       
                        alert1 = true
                        
                    }
                }
                .alert(isPresented: $alert1) {
                            Alert(
                                title: Text("1setd"),
                                message: Text("2setd"),
                                primaryButton: .destructive(Text("3setd")) {
                                    Start = 0
                                    Year = 1
                                    InMonth = 0
                                    Rate = 4
                                    earnMoney = ""
                                    spendMoney = ""
                                },
                                secondaryButton: .cancel()
                            )
                        }
            }.multilineTextAlignment(.leading)
                .padding(.horizontal,15)
            
        }
     
    }
  
}
    struct Settings_screen_Previews: PreviewProvider {
        static var previews: some View {
            Settings_screen()
                .previewDevice("iPhone SE (3rd generation)")
            Settings_screen()
                .previewDevice("iPhone 14 Pro Max")
        }
    }


