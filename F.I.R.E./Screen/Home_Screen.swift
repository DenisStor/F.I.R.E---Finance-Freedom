

import SwiftUI

struct Home_Screen: View {
    @AppStorage ("currentPage") var currentPage : Int = 1
    
    
    @State private var spacing : CGFloat = 20
    @State private var imageforqwes : [String] = [
        "stockagree",
        "g",
        "d",
       
    ]
    @State private var textforqwes : [String] = [
        NSLocalizedString("RecognizeStock1", comment: ""),
        "Разбираемся в терминах: Что такое IPO?",
        "Диверсификация: Снижению риска в портфеле акций",
       
    ] // делать
    @State private var colormain : [String] = [
    "Color_bl",
    "Color_font",
    "Color_font",
    ]
    
    
    @State private var TextTime : [String] = [
        NSLocalizedString("ReadTime1", comment: ""),
        NSLocalizedString("ReadTime2", comment: ""),
        NSLocalizedString("ReadTime3", comment: ""),
      
    ] // делать
    @State private var Image1 : [String] = [
        "one",
        "two",
        "three",
       
    ]
    @State private var Text1 : [String] = [
        NSLocalizedString("RecognizeStock2", comment: ""),
        
        "Как распознать недооценённые акции?",
        "Как распознать недооценённые акции?",
       
    ] // делать
    @State private var Text2 : [String] = [
        NSLocalizedString("RecognizeStock3", comment: ""),
        "234424",
        "3t3",
      
    ] // делать
    @State private var Text3 : [String] = [
        NSLocalizedString("RecognizeStock4", comment: ""),
        "banana_Image",
        "Image_test",
    
    ] // делать
    @State private var Text4 : [String] = [
        NSLocalizedString("RecognizeStock5", comment: ""),
        "234424",
        "3t3",
      
    ] // делать
    @State private var Text5 : [String] = [
        NSLocalizedString("RecognizeStock6", comment: ""),
        "234424",
        "3t3",
     
    ] // делать
    @State private var random : [Int] = [
        0,
        0,
        0,
        
    ]
    @State private var maxSize : Int  = 3
    
    
    let words = strings()
    @State private var currentword = ""
    
    var body: some View {
        
        
        NavigationStack{
            GeometryReader { g in
                let screen = g.size
                ZStack{
                    Color("Color_back")
                        .edgesIgnoringSafeArea(.all)
                    ScrollView(showsIndicators: false){
                        
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                ForEach(0..<3) { index in
                                    NavigationLink {
                                        ZStack{
                                            Color("Color_back")
                                                .edgesIgnoringSafeArea(.all)
                                            ScrollView {
                                                VStack(spacing:30){
                                                    VStack(spacing:10){
                                                        HStack{
                                                            Image("str")
                                                                .aspectRatio(contentMode: .fit)
                                                            Text(TextTime[random[index]])
                                                            
                                                                .font(.system(size: 20,weight: .medium))
                                                                .multilineTextAlignment(.center)
                                                                .foregroundColor(Color("Color_font"))
                                                            
                                                            
                                                        }
                                                        
                                                        Text(textforqwes[random[index]])
                                                            .font(.system(size: 35,weight: .medium))
                                                            .multilineTextAlignment(.center)
                                                    }
                                                        Image("\(Image1[random[index]])")
                                                            .cornerRadius(30)
                                                    
                                                    HStack {
                                                        Text(Text1[random[index]])
                                                            .font(.system(size: 20,weight: .medium))
                                                            .multilineTextAlignment(.leading)
                                                        .foregroundColor(Color("Color_font"))
                                                        .lineSpacing(12)
                                                        Spacer()
                                                    }
                                                    HStack {
                                                        Text(Text2[random[index]])
                                                            .font(.system(size: 20,weight: .medium))
                                                            .multilineTextAlignment(.leading)
                                                        .foregroundColor(Color("Color_font"))
                                                        .lineSpacing(12)
                                                        Spacer()
                                                    }
                                                    HStack {
                                                        Text(Text3[random[index]])
                                                            .font(.system(size: 20,weight: .medium))
                                                            .multilineTextAlignment(.leading)
                                                        .foregroundColor(Color("Color_font"))
                                                        .lineSpacing(12)
                                                        Spacer()
                                                    }
                                                    HStack {
                                                        Text(Text4[random[index]])
                                                            .font(.system(size: 20,weight: .medium))
                                                            .multilineTextAlignment(.leading)
                                                        .foregroundColor(Color("Color_font"))
                                                        .lineSpacing(12)
                                                        Spacer()
                                                    }
                                                    HStack {
                                                        Text(Text5[random[index]])
                                                            .font(.system(size: 20,weight: .medium))
                                                            .multilineTextAlignment(.leading)
                                                        .foregroundColor(Color("Color_font"))
                                                        .lineSpacing(12)
                                                        Spacer()
                                                    }
                                                }.padding(.horizontal,15)
                                            }
                                        }
                                    } label: {
                                        
                                        
                                        ZStack{
                                            Image(imageforqwes[random[index]])
                                                .resizable()
                                                
                                                .frame(width: screen.height / 3, height: screen.height / 3)
                                                .cornerRadius(30)
                                                .padding(.leading, index == 0 ? 15 : 10)
                                           
                                            VStack{
                                                Spacer()
                                                HStack{
                                                    
                                                    Text("\(textforqwes[random[index]])")
                                                        .multilineTextAlignment(.leading)
                                                        .foregroundColor(Color(colormain[random[index]]))
                                                        .font(.system(size: 0.03 * screen.height ,weight: .medium))
                                                    
                                                    Spacer()
                                                }
                                            }.frame(width: screen.height / 3.7, height: screen.height / 3.7)
                                        }
                                    }
                                }
                            }
                        }
                        
                        VStack(spacing: spacing){
                            
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 30)
                                    .frame(height: 280)
                                    .foregroundColor(Color("Color_for_home"))
                                HStack{
                                    VStack(alignment: .leading,spacing: 15){
                                        HStack{
                                            Image("logoFire")
                                                .resizable()
                                                .frame(width: 0.25 * screen.height / 8, height: 0.4 * screen.height / 8 )
                                            Spacer()
                                        }
                                        HStack {
                                            Text("Движение F.I.R.E. расшифровывается как").foregroundColor(Color("Color_font")) +
                                            Text(" Financial Independence Retire Early").foregroundColor(Color("Color_font_1"))
                                               
                                            Spacer()
                                        } .font(.system(size: 25 ,weight: .medium))
                                            
                                            .multilineTextAlignment(.leading)
                                        
                                      
                                        
                                        NavigationLink {
                                            AboutFIRE_Screen()
                                            
                                        }
                                    label: {
                                            
                                            
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 14)
                                                    .foregroundColor(Color("Color_font_1"))
                                                HStack{
                                                    
                                                    Text("More")
                                                        .foregroundColor(Color("Color_font_2"))
                                                        .font(.system(size: 20 ,weight: .medium))
                                                    
                                                   
                                                    
                                                }  .padding(10)
                                            }.frame(maxWidth: .infinity,maxHeight:55)
                                            
                                        }
                                    }
                                }
                                .padding(.horizontal,20)
                                
                            }
                            
                            
                        
                            
                            
                            
                            
                            
                            
                            
                            NavigationLink { Famous_Screen()}
                        label: {
                            ZStack{
                                
                                
                                Image("FamousPeople")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(30)
                                
                                HStack {
                                    VStack(alignment: .leading,spacing: 5){
                                        Text("Whatarethey")
                                            .font(.system(size: 25,weight: .medium))
                                            .foregroundColor(Color("Color_font_2"))
                                        
                                        
                                        
                                        Text("homeWord1")
                                        
                                            .font(.system(size: 20,weight: .medium))
                                            .foregroundColor(Color(white: 1, opacity: 0.5))
                                            .overlay(
                                                Rectangle().frame(height: 2).offset(y: 4)
                                                , alignment: .bottom)
                                        
                                        
                                            .foregroundColor(Color(white: 1, opacity: 0.5))
                                        
                                        
                                            .foregroundColor(Color(white: 1, opacity: 0.5))
                                        
                                    }
                                    Spacer()
                                }.multilineTextAlignment(.leading)
                                    .padding(.horizontal,20)
                                
                            }
                        }
                            
                            NavigationLink { Test_Screen()}
                        label: {
                            ZStack{
                                
                                Image("buttest")
                                    .resizable()
                                    .cornerRadius(30)
                                    .aspectRatio(contentMode: .fill)
                                HStack {
                                    VStack(alignment: .leading,spacing: 5){
                                        
                                            
                                            HStack {
                                                Text("Какие активы\nвам подойдут")
                                                    .foregroundColor(Color("Color_font"))
                                                .font(.system(size: 25 ,weight: .medium))
                                               // Spacer()
                                            }
                                            HStack {
                                                Text("homeWord1")
                                                
                                                    .font(.system(size: 20 ,weight: .medium))
                                                    .foregroundColor(Color("Color_font"))
                                                    .opacity(0.5)
                                                    .overlay(
                                                        Rectangle().frame(height: 2).offset(y: 4)
                                                            .foregroundColor(Color("Color_font"))
                                                            .opacity(0.5)
                                                    , alignment: .bottom)
                                                Spacer()
                                            }
                                    }
                                    Spacer()
                                }.multilineTextAlignment(.leading)
                                    .padding(.horizontal,20)
                                
                            }
                        }
                            
                            
                            
                            
                            NavigationLink { InvestAgree_Screen()}
                        label: {
                            ZStack{
                                
                                
                                Image("investagr")
                                    .resizable()
                                    .cornerRadius(30)
                                
                                HStack {
                                    VStack(alignment: .leading,spacing: 5){
                                        Text("investagr1")
                                            .font(.system(size: 25,weight: .medium))
                                            .foregroundColor(Color("Color_font_2"))
                                        
                                        
                                        
                                        
                                    }
                                    Spacer()
                                }.multilineTextAlignment(.leading)
                                    .padding(.horizontal,20)
                                
                            }
                        }
                            
                            
                            
                            
                            NavigationLink { Tax_Screen()}
                        label: {
                            ZStack{
                                
                                Image("imageforhome")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                HStack {
                                    VStack(alignment: .leading,spacing: 5){
                                        HStack{
                                            Text("tax")
                                                .font(.system(size: 25 ,weight: .medium))
                                                .foregroundColor(Color("Color_font_1"))
                                            
                                            
                                            
                                            
                                            
                                        }
                                    }
                                    Spacer()
                                }.multilineTextAlignment(.leading)
                                    .padding(.horizontal,20)
                                
                            }
                        }
                            
                            
                            ZStack{
                             Image("soviety")
                                    .resizable()
                                    .cornerRadius(30)
                                    
                                
                                VStack(spacing:0){
                                 
                                    
                                    HStack{
                                       Text("\(currentword)")
                                            
                                            .font(.system(size: 23,weight: .medium))
                                            .multilineTextAlignment(.leading)
                                            .foregroundColor(Color("Color_font_2"))
                                        Spacer()
                                    }
                                
                                }.frame(height: 140)
                                .padding(.horizontal,20)
                            }
                            .onTapGesture {
                                currentword = words.word.randomElement() ?? ""
                                let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                                impactHeavy.impactOccurred()
                            }
                            .onAppear{
                                                    
                                                    if currentword.isEmpty {
                                                        currentword = words.word.randomElement() ?? ""
                                                    }
                                                    Timer.scheduledTimer(withTimeInterval: 30, repeats: true) { _ in
                                                        currentword = words.word.randomElement() ?? ""
                                                    }
                                                    
                                                }
                            
                            RoundedRectangle (cornerRadius: 0)
                                .frame(height: 50)
                                .opacity(0)
                            
                            
                        }
                        .padding(.horizontal,15)
                        .padding(.top,spacing)
                    }
                    .refreshable {
                        
                        random = randomInt(maxCurrentSize: maxSize)
                        
                        if spacing == 120 {
                            
                        } else {
                            spacing = spacing + 15
                            if spacing == 20 {
                                
                            }
                            else {
                                Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { _ in
                                    spacing = spacing - 15
                                }
                            }
                        }
                    }.animation(.easeInOut, value: spacing)
                }
            }
        }.onAppear(){
            random = [Int](randomInt(maxCurrentSize: 3))
        }
        
    }
    func randomInt(maxCurrentSize: Int) -> [Int] {
        let rangeValue : Range<Int> = 0..<maxCurrentSize
        let random = Set.init(rangeValue)
        let randomArr : [Int] = [Int](random)
        return randomArr
    }
}

struct Home_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Home_Screen()
    }
}
