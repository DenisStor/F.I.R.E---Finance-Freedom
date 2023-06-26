

import SwiftUI
struct storisBar {
    let imageStringTitle : String
    let imageString : String
    let textTime : String
    let textTitle : String
    let text1 : String
   
}
struct Home_Screen: View {
    @AppStorage ("currentPage") var currentPage : Int = 1
    @AppStorage ("test1")  var test1 : Int = 0
    @AppStorage ("test_1")  var test_1 : Int = 0
    @AppStorage ("test2")  var test2 : Int = 0
    @AppStorage ("test_2")  var test_2 : Int = 0
    @AppStorage ("test3")  var test3 : Int = 0
    @AppStorage ("test_3")  var test_3 : Int = 0
    let words = strings()
    @State private var currentword = ""
    @State private var spacing : CGFloat = 20
    
    let stories = [
    storisBar(
              imageStringTitle: "Stor 1", //картинка которая видна с home screen
              imageString : "Stor 1-2", // внутренняя картинка
              textTime : NSLocalizedString("brgr", comment: ""), // время чтения
              textTitle: NSLocalizedString("lwekjgh213", comment: ""), //заголовок
              text1:     NSLocalizedString("q3tyh", comment: "")
              ),//,
    storisBar(
              imageStringTitle: "Stor 2",
              imageString : "Stor 2-2",
              textTime : NSLocalizedString("qerhjqer", comment: ""),
              textTitle: NSLocalizedString("dwqhb5", comment: ""),
              text1:     NSLocalizedString("sgwioehn", comment: "")
             ),
    storisBar(
              imageStringTitle: "Stor 3",
              imageString : "Stor 3-3",
              textTime : NSLocalizedString("qerhjqer1", comment: ""),
              textTitle: NSLocalizedString("rejerh", comment: ""),
              text1:     NSLocalizedString("bokwehg", comment: "")
              ),
    storisBar(
              imageStringTitle: "Stor 4",
              imageString : "Stor 12",
              textTime : NSLocalizedString("qerhjqer1", comment: ""),
              textTitle: NSLocalizedString("ryteklwtaejrh", comment: ""),
              text1:     NSLocalizedString("birwebhn", comment: "")
              ),
    storisBar(
              imageStringTitle: "Stor 5",
              imageString : "Stor 4-4",
              textTime : NSLocalizedString("qerhjqer12", comment: ""),
              textTitle: NSLocalizedString("nohiowrh", comment: ""),
              text1:     NSLocalizedString("inobern", comment: "")
             ),
    storisBar(
              imageStringTitle: "Stor 6",
              imageString : "Stor Gold",
              textTime : NSLocalizedString("qerhjqer1267", comment: ""),
              textTitle: NSLocalizedString("aoperhinoweh", comment: ""),
              text1:     NSLocalizedString("renqerh", comment: "")
             ),
    storisBar(
              imageStringTitle: "Stor 7",
              imageString : "Stor 8-8",
              textTime : NSLocalizedString("qerhjqer29", comment: ""),
              textTitle: NSLocalizedString("nwrtm", comment: ""),
              text1:     NSLocalizedString("gweghiewgno", comment: "")
             ),
    ]
   
    @State private var colormain : [String] = [
    "Color_bl",
    "Color_bl",
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
        0,
        0,
    ]
    @State private var maxSize : Int  = 7
    
    
    
    var body: some View {
        
        
        NavigationStack{
           
                ZStack{
                    Color("Color_back")
                        .edgesIgnoringSafeArea(.all)
                    ScrollView(showsIndicators: false){
                        
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                ForEach(0..<7) { index in
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
                                                        .font(.system(size: 20 ,weight: .semibold))
                                                    
                                                    Spacer()
                                                }.padding(.leading,30)
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
                                            Text("\(test1+test2+test3)")
                                                .font(.system(size: 20 ,weight: .medium))
                                                .foregroundColor(Color("Color_font_3"))
                                            +
                                            Text("vt1")
                                                .font(.system(size: 20 ,weight: .medium))
                                                .foregroundColor(Color("Color_font_3"))
                                            +
                                            Text("3 ")
                                                .font(.system(size: 20 ,weight: .medium))
                                                .foregroundColor(Color("Color_font_3"))
                                            +
                                            Text("bg")
                                                .font(.system(size: 20 ,weight: .medium))
                                                .foregroundColor(Color("Color_font_3"))
                                            
                                            Spacer()
                                        }
                                        HStack{
                                            
                                            bar_progress(progress:Float(test1+test2+test3), total: Float(3))
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
