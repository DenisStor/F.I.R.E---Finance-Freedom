

import SwiftUI
struct storisBar {
    let imageStringTitle : String
    let imageString : String
    let textTime : String
    let textTitle : String
    let text1 : String
    let text2 : String
    let text3 : String
    let text4 : String
    let text5 : String
}
struct Home_Screen: View {
    @AppStorage ("currentPage") var currentPage : Int = 1
    @AppStorage ("test1")  var test1 : Int = 0
    @AppStorage ("test_1")  var test_1 : Int = 0
    
    let words = strings()
    @State private var currentword = ""
    @State private var spacing : CGFloat = 20
    
    let stories = [
    storisBar(
              imageStringTitle: "stockagree", //картинка которая видна с home screen
              imageString : "", // внутренняя картинка
              textTime : NSLocalizedString("1", comment: ""), // время чтения
              textTitle: NSLocalizedString("1", comment: ""), //заголовок
              text1:     NSLocalizedString("2", comment: ""), // текст 1
              text2:     NSLocalizedString("3", comment: ""),// текст 2
              text3:     NSLocalizedString("4", comment: ""),// текст 3
              text4:     NSLocalizedString("5", comment: ""),// текст 4
              text5:     NSLocalizedString("6", comment: "")),// текст 5
    storisBar(
              imageStringTitle: "stockagree",
              imageString : "",
              textTime : NSLocalizedString("1", comment: ""),
              textTitle: NSLocalizedString("1", comment: ""),
              text1:     NSLocalizedString("2", comment: ""),
              text2:     NSLocalizedString("3", comment: ""),
              text3:     NSLocalizedString("4", comment: ""),
              text4:     NSLocalizedString("5", comment: ""),
              text5:     NSLocalizedString("6", comment: "")),
    storisBar(
              imageStringTitle: "stockagree",
              imageString : "",
              textTime : NSLocalizedString("time", comment: ""),
              textTitle: NSLocalizedString("title", comment: ""),
              text1:     NSLocalizedString("1", comment: ""),
              text2:     NSLocalizedString("2", comment: ""),
              text3:     NSLocalizedString("3", comment: ""),
              text4:     NSLocalizedString("4", comment: ""),
              text5:     NSLocalizedString("5", comment: "")),
    storisBar(
              imageStringTitle: "stockagree",
              imageString : "",
              textTime : NSLocalizedString("time", comment: ""),
              textTitle: NSLocalizedString("title", comment: ""),
              text1:     NSLocalizedString("1", comment: ""),
              text2:     NSLocalizedString("2", comment: ""),
              text3:     NSLocalizedString("3", comment: ""),
              text4:     NSLocalizedString("4", comment: ""),
              text5:     NSLocalizedString("5", comment: "")),
    storisBar(
              imageStringTitle: "stockagree",
              imageString : "",
              textTime : NSLocalizedString("time", comment: ""),
              textTitle: NSLocalizedString("умумумум", comment: ""),
              text1:     NSLocalizedString("1", comment: ""),
              text2:     NSLocalizedString("2", comment: ""),
              text3:     NSLocalizedString("3", comment: ""),
              text4:     NSLocalizedString("4", comment: ""),
              text5:     NSLocalizedString("5", comment: "")),
    ]
   
    @State private var colormain : [String] = [
    "Color_bl",
    "Color_bl",
    "Color_bl",
    "Color_bl",
    "Color_bl",
    ]

    @State private var random : [Int] = [
        0,
        0,
        0,
        0,
        0,
    ]
    @State private var maxSize : Int  = 5
    
    
    
    var body: some View {
        
        
        NavigationStack{
           
                ZStack{
                    Color("Color_back")
                        .edgesIgnoringSafeArea(.all)
                    ScrollView(showsIndicators: false){
                        
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                ForEach(0..<5) { index in
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
                                                            Text(stories[random[index]].textTime)
                                                            
                                                                .font(.system(size: 20,weight: .medium))
                                                                .multilineTextAlignment(.center)
                                                                .foregroundColor(Color("Color_font"))
                                                            
                                                            
                                                        }
                                                        
                                                        Text(stories[random[index]].textTitle)
                                                            .font(.system(size: 35,weight: .medium))
                                                            .multilineTextAlignment(.center)
                                                    }
                                                        Image("\(stories[random[index]].imageString)")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                            .cornerRadius(30)
                                                            
                                                    
                                                    HStack {
                                                        Text(stories[random[index]].text1)
                                                            .font(.system(size: 20,weight: .medium))
                                                            .multilineTextAlignment(.leading)
                                                        .foregroundColor(Color("Color_font"))
                                                        .lineSpacing(12)
                                                        Spacer()
                                                    }
                                                    HStack {
                                                        Text(stories[random[index]].text2)
                                                            .font(.system(size: 20,weight: .medium))
                                                            .multilineTextAlignment(.leading)
                                                        .foregroundColor(Color("Color_font"))
                                                        .lineSpacing(12)
                                                        Spacer()
                                                    }
                                                    HStack {
                                                        Text(stories[random[index]].text3)
                                                            .font(.system(size: 20,weight: .medium))
                                                            .multilineTextAlignment(.leading)
                                                        .foregroundColor(Color("Color_font"))
                                                        .lineSpacing(12)
                                                        Spacer()
                                                    }
                                                    HStack {
                                                        Text(stories[random[index]].text4)
                                                            .font(.system(size: 20,weight: .medium))
                                                            .multilineTextAlignment(.leading)
                                                        .foregroundColor(Color("Color_font"))
                                                        .lineSpacing(12)
                                                        Spacer()
                                                    }
                                                    HStack {
                                                        Text(stories[random[index]].text5)
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
                                            Image(stories[random[index]].imageStringTitle)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .cornerRadius(30)
                                                .padding(.leading, index == 0 ? 15 : 10)
                                                .overlay (
                                            VStack{
                                                Spacer()
                                                HStack{
                                                    
                                                    Text("\(stories[random[index]].textTitle)")
                                                        .multilineTextAlignment(.leading)
                                                        .foregroundColor(Color(colormain[random[index]]))
                                                        .font(.system(size: 20 ,weight: .medium))
                                                    
                                                    Spacer()
                                                }.padding(.leading,25)
                                                .padding(.bottom,25)
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
                                                    
                                                   
                                                    
                                                }  .padding(.vertical,15)
                                            }.frame(maxWidth: .infinity)
                                            
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
            random = [Int](randomInt(maxCurrentSize: maxSize))
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
