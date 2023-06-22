

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
        NSLocalizedString("IPO1", comment: ""),
        NSLocalizedString("Cqq", comment: ""),
        
       
    ]
    @State private var colormain : [String] = [
    "Color_bl",
    "Color_font",
    "Color_font",
    
    ]
    
    
    @State private var TextTime : [String] = [
        NSLocalizedString("ReadTime1", comment: ""),
        NSLocalizedString("ReadTime2", comment: ""),
        NSLocalizedString("ReadTime3", comment: ""),
      
    ]
    @State private var Image1 : [String] = [
        "one",
        "two",
        "three",
       
    ]
    @State private var Text1 : [String] = [
     
        NSLocalizedString("RecognizeStock2", comment: ""),
        NSLocalizedString("IPO2", comment: ""),
        NSLocalizedString("Divers3", comment: ""),
       
    ]
    @State private var Text2 : [String] = [
        NSLocalizedString("RecognizeStock3", comment: ""),
        NSLocalizedString("IPO3", comment: ""),
        NSLocalizedString("Divers4", comment: ""),
      
    ]
    @State private var Text3 : [String] = [
        NSLocalizedString("RecognizeStock4", comment: ""),
        NSLocalizedString("IPO4", comment: ""),
        NSLocalizedString("Divers5", comment: ""),
    
    ]
    @State private var Text4 : [String] = [
        NSLocalizedString("RecognizeStock5", comment: ""),
        NSLocalizedString("IPO5", comment: ""),
        NSLocalizedString("Divers6", comment: ""),
      
    ]
    @State private var Text5 : [String] = [
        NSLocalizedString("RecognizeStock6", comment: ""),
        NSLocalizedString("IPO6", comment: ""),
        NSLocalizedString("Divers7", comment: ""),
     
    ]
    @State private var random : [Int] = [
        0,
        0,
        0,
        
    ]
    @State private var maxSize : Int  = 3
    
    
    let words = strings()
    @State private var currentword = ""
    
    
    
    
    
    @AppStorage ("test1")  var test1 : Int = 0
    @AppStorage ("test_1")  var test_1 : Int = 0
    
    var body: some View {
        
        
        NavigationStack{
           
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
                                                VStack(spacing:50){
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
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
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
                                                }.padding(.horizontal,20)
                                            }
                                        }
                                    } label: {
                                        
                                        
                                        ZStack{
                                            Image(imageforqwes[random[index]])
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .cornerRadius(30)
                                                .padding(.leading, index == 0 ? 15 : 10)
                                                .overlay (
                                            VStack{
                                                Spacer()
                                                HStack{
                                                    
                                                    Text("\(textforqwes[random[index]])")
                                                        .multilineTextAlignment(.leading)
                                                        .foregroundColor(Color(colormain[random[index]]))
                                                        .font(.system(size: 20 ,weight: .medium))
                                                    
                                                    Spacer()
                                                }.padding(.leading,30)
                                                .padding(.bottom,20)
                                            }
                                         )
                                                .frame(height: 250)
                                        }
                                    }
                                }
                            }
                        }
                        
                        VStack(spacing: spacing){
                            
                            
                            ZStack{
                               
                                
                                    VStack(alignment: .leading,spacing: 20){
                                        VStack(spacing:5) {
                                            HStack{
                                                Image("logoFire")
                                                    .renderingMode(.template)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .foregroundColor(Color("Color_font_1"))
                                                    .frame(height: 50)
                                                
                                                Spacer()
                                                
                                            }
                                            HStack {
                                                Text("sS").foregroundColor(Color("Color_font")) +
                                                Text(" Financial Independence Retire Early").foregroundColor(Color("Color_font_1"))
                                                
                                                Spacer()
                                            } .font(.system(size: 25 ,weight: .medium))
                                            
                                                .multilineTextAlignment(.leading)
                                        }
                                      
                                        
                                        NavigationLink {
                                            AboutFIRE_Screen()
                                            
                                        }
                                    label: {
                                            
                                            
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 30)
                                                    .foregroundColor(Color("Color_font_1"))
                                                HStack{
                                                    
                                                    Text("More")
                                                        .foregroundColor(Color("Color_font_2"))
                                                        .font(.system(size: 20 ,weight: .medium))
                                                    
                                                   
                                                    
                                                }  .padding(10)
                                            }.frame(maxWidth: .infinity,maxHeight:55)
                                            
                                        }
                                    }
                                .padding(.horizontal,20)
                                .padding(.vertical,20)
                                .background (
                                    RoundedRectangle(cornerRadius: 30)
                                       
                                        .foregroundColor(Color("Color_for_home"))
                                )
                                
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
                                                Text("RWW")
                                                    .foregroundColor(Color("Color_font"))
                                                .font(.system(size: 25 ,weight: .medium))
                                               // Spacer()
                                            }
                                            HStack {
                                                Text("FW")
                                                
                                                    .font(.system(size: 20 ,weight: .medium))
                                                    .foregroundColor(Color("Color_font"))
                                                    .opacity(0.5)
                                                    
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
                             
                                VStack(){
                                 
                                    VStack(spacing:10){
                                        HStack{
                                            Text("\(currentword)")
                                            
                                                .font(.system(size: 20,weight: .medium))
                                                .multilineTextAlignment(.leading)
                                                .foregroundColor(Color("Color_font_2"))
                                            Spacer()
                                        }
                                        HStack{
                                            Image(systemName: "hand.tap")
                                            
                                                
                                            Text("GT2")
                                            
                                                
                                            Spacer()
                                        }.font(.system(size: 18,weight: .medium))
                                         .multilineTextAlignment(.leading)
                                         .foregroundColor(Color("Color_font_2"))
                                         .opacity(0.5)
                                    } .padding(.horizontal,20)
                                        .padding(.vertical,20)
                                        .background (
                                            RoundedRectangle(cornerRadius: 30)
                                                   .foregroundColor(Color("Color_font_1"))
                                                 
                                        )
                                 
                                   
                                
                                }
                                .animation(.spring(), value: currentword)
                               
                                .onTapGesture {
                                    currentword = words.word.randomElement() ?? ""
                                    let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                                    impactHeavy.impactOccurred()
                                }
                               
                            }
                            NavigationLink {
                                Medalki_Screen()
                            } label: {
                                ZStack{
                                    Image("testImage")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(30)
                                    VStack{
                                        HStack{
                                            Text("KW1")
                                                .font(.system(size: 25 ,weight: .medium))
                                                .foregroundColor(Color("Color_font"))
                                            
                                            Spacer()
                                            
                                            
                                            
                                        }
                                        HStack{
                                            Text("\(test1)")
                                                .font(.system(size: 20 ,weight: .medium))
                                                .foregroundColor(Color("Color_font_3"))
                                            +
                                            Text("vt1")
                                                .font(.system(size: 20 ,weight: .medium))
                                                .foregroundColor(Color("Color_font_3"))
                                            +
                                            Text("2 ")
                                                .font(.system(size: 20 ,weight: .medium))
                                                .foregroundColor(Color("Color_font_3"))
                                            +
                                            Text("bg")
                                                .font(.system(size: 20 ,weight: .medium))
                                                .foregroundColor(Color("Color_font_3"))
                                            
                                            Spacer()
                                        }
                                        HStack{
                                            
                                            bar_progress(progress:Float(test1), total: Float(2))
                                                .frame(alignment: .leading)
                                           
                                            
                                        }.frame(height: 12)
                                            .padding(.trailing,150)
                                    }.padding(.horizontal,20)
                                }
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
                    }
                    .animation(.spring(), value: spacing)
                    .animation(.spring(), value: currentword)
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
